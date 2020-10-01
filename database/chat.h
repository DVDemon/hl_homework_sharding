#ifndef CHAT_H
#define CHAT_H

#include "Poco/JSON/Object.h"
#include <string>
#include <vector>
#include "database_mysql.h"
#include <time.h>

namespace database{
    struct Chat{
            long        id;
            std::time_t time;
            std::string source_login;
            std::string destination_login;
            std::string message;
            long        readed;


            Poco::JSON::Object::Ptr toJSON() const{
                Poco::JSON::Object::Ptr root = new Poco::JSON::Object();
                root->set("id",id);
                root->set("time",time);
                root->set("source_login",source_login);
                root->set("destination_login",destination_login);
                root->set("message",message);
                root->set("readed",readed);
                return root;
            }

            static void init(){
                try{
                    std::cout << "initializing chat ..." << std::endl;
                    std::string query = "CREATE TABLE `chat` (`id` INT NOT NULL AUTO_INCREMENT,`time` DATETIME NOT NULL, `source_login` VARCHAR(256) NOT NULL,`destination_login` VARCHAR(256) NOT NULL,`message` VARCHAR(1024) NULL,  `readed` int NOT NULL,PRIMARY KEY (`id`),KEY `source` (`source_login`),KEY `destination` (`destination_login`));";
                    database::Database_MySQL::get().execute(query);
                    std::cout << "initializing char ... done" << std::endl;
                }catch(...){
                    std::cout << "initializing chat ... fail" << std::endl;
                }

            }


            static std::vector<Chat> get(const std::string &login){
                std::vector<Chat> result;
                Chat chat;

                std::string query="SELECT id, UNIX_TIMESTAMP(time) as tt, source_login,destination_login,message,readed FROM chat WHERE source_login='";
                query += login;
                query += "' OR destination_login='";
                query += login;
                query += "';";
                database::Database_MySQL::get().query(query,[&](int ,int column,std::string value)
                {
                        switch(column){
                            case 0: chat.id = atoi(value.c_str()); break;
                            case 1: chat.time= atol(value.c_str());break;
                            case 2: chat.source_login=value;break;
                            case 3: chat.destination_login=value;break;
                            case 4: chat.message=value;break;
                            case 5: chat.readed=atoi(value.c_str());break;
                        }
                    
                },[&](int){
                    result.push_back(chat);
                });
                

                return result;
            }

            static std::vector<Chat> get(const std::string &login1,const std::string &login2){
                std::vector<Chat> result;
                Chat chat;

                std::string query="SELECT id, UNIX_TIMESTAMP(time) as tt, source_login,destination_login,message,readed FROM chat WHERE (source_login='";
                query += login1;
                query += "' AND destination_login='";
                query += login2;
                query += "') OR (source_login='";
                query += login2;
                query += "' AND destination_login='";
                query += login1;
                query += "');";
                database::Database_MySQL::get().query(query,[&](int ,int column,std::string value)
                {
                        switch(column){
                            case 0: chat.id = atoi(value.c_str()); break;
                            case 1: chat.time= atol(value.c_str());break;
                            case 2: chat.source_login=value;break;
                            case 3: chat.destination_login=value;break;
                            case 4: chat.message=value;break;
                            case 5: chat.readed=atoi(value.c_str());break;
                        }
                    
                },[&](int){
                    result.push_back(chat);
                });
                

                return result;
            }

            void insert(){
                std::string query="INSERT INTO chat  (time,source_login,destination_login,message,readed) VALUES(";
                query+="FROM_UNIXTIME("+std::to_string(time)+"),";
                query+="'"+source_login+"',";
                query+="'"+destination_login+"',";
                query+="'"+message+"',";
                query+="'"+std::to_string(readed)+"'";
                query+=")";
                database::Database_MySQL::get().execute(query);
            }
    };
}
#endif