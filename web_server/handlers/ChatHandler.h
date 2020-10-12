        #ifndef CHATHANDLER_H
        #define CHATHANDLER_H

        #include "Poco/Net/HTTPServer.h"
        #include "Poco/Net/HTTPRequestHandler.h"
        #include "Poco/Net/HTTPRequestHandlerFactory.h"
        #include "Poco/Net/HTTPServerParams.h"
        #include "Poco/Net/HTTPServerRequest.h"
        #include "Poco/Net/HTTPServerResponse.h"
        #include "Poco/Net/HTTPServerParams.h"
        #include "Poco/Net/HTMLForm.h"
        #include "Poco/Net/ServerSocket.h"
        #include "Poco/Timestamp.h"
        #include "Poco/DateTimeFormatter.h"
        #include "Poco/DateTimeFormat.h"
        #include "Poco/Exception.h"
        #include "Poco/ThreadPool.h"
        #include "Poco/Util/ServerApplication.h"
        #include "Poco/Util/Option.h"
        #include "Poco/Util/OptionSet.h"
        #include "Poco/Util/HelpFormatter.h"
        #include <iostream>
        #include <iostream>
        #include <fstream>

        using Poco::Net::ServerSocket;
        using Poco::Net::HTTPRequestHandler;
        using Poco::Net::HTTPRequestHandlerFactory;
        using Poco::Net::HTTPServer;
        using Poco::Net::HTTPServerRequest;
        using Poco::Net::HTTPServerResponse;
        using Poco::Net::HTTPServerParams;
        using Poco::Timestamp;
        using Poco::DateTimeFormatter;
        using Poco::DateTimeFormat;
        using Poco::ThreadPool;
        using Poco::Util::ServerApplication;
        using Poco::Util::Application;
        using Poco::Util::Option;
        using Poco::Util::OptionSet;
        using Poco::Util::OptionCallback;
        using Poco::Util::HelpFormatter;
        using Poco::Net::NameValueCollection;
        using Poco::Net::HTMLForm;

        #include "../../database/chat.h"
        #include "../session/session.h"

        #include <map>

        class ChatHandler: public HTTPRequestHandler
        {
        public:
            ChatHandler(const std::string& format): _format(format)
            {
            }

            void handleRequest(HTTPServerRequest& request,
                            HTTPServerResponse& response)
            {
                HTMLForm form(request);
                response.setChunkedTransferEncoding(true);
                response.setContentType("application/json");
                std::ostream& ostr = response.send();
                if(form.has("session_id") && !form.has("add") && !form.has("filter")){
                    std::string session_str=form.get("session_id"); 
                    long  session_id = stol(session_str);

                    if(webserver::Session::get().is_correct(session_id)){
                        try{
                            std::string login = webserver::Session::get().get_login(session_id);
                            std::vector<database::Chat> friends = database::Chat::get(login); 
                            Poco::JSON::Array arr;
                            for(auto s: friends) {
                                Poco::JSON::Object::Ptr ptr = new Poco::JSON::Object();
                                ptr->set("id",s.id);
                                ptr->set("time",s.time);
                                ptr->set("source_login",s.source_login);
                                ptr->set("destination_login",s.destination_login);
                                ptr->set("message",s.message);
                                ptr->set("readed",s.readed);
                                arr.add(ptr);   
                            }      
                            Poco::JSON::Stringifier::stringify(arr,ostr);
                        }catch(...){
                        }
                    } 
                } else
                if(form.has("session_id") && (!form.has("add")) && form.has("filter")){
                    std::string session_str=form.get("session_id"); 
                    long  session_id = stol(session_str);

                    if(webserver::Session::get().is_correct(session_id)){
                        try{
                            std::string login = webserver::Session::get().get_login(session_id);
                            std::string filter = form.get("filter");
                            std::vector<database::Chat> friends = database::Chat::get(login,filter); 
                            Poco::JSON::Array arr;
                            for(auto s: friends) {
                                Poco::JSON::Object::Ptr ptr = new Poco::JSON::Object();
                                ptr->set("id",s.id);
                                struct tm * timeinfo;
                                timeinfo = localtime ( &s.time );
                                std::string time_val = (const char*)asctime (timeinfo);
                                ptr->set("time",time_val);
                                ptr->set("source_login",s.source_login);
                                ptr->set("destination_login",s.destination_login);
                                ptr->set("message",s.message);
                                ptr->set("readed",s.readed);
                                arr.add(ptr);   
                            }      
                            Poco::JSON::Stringifier::stringify(arr,ostr);
                        }catch(std::exception &ex){
                            std::cout << "exception:" << ex.what() << std::endl;
                        }
                    } 
                } else
                if(form.has("session_id")  
                   && form.has("add")
                   && form.has("destination")
                   && form.has("message")){
                    std::string session_str=form.get("session_id"); 
                    long  session_id = stol(session_str);

                    if(webserver::Session::get().is_correct(session_id)){
                        try{
                            std::string login = webserver::Session::get().get_login(session_id);
                            database::Chat chat;
                            chat.source_login = login;
                            chat.destination_login = form.get("destination");
                            time (&chat.time);
                            chat.message = form.get("message");
                            chat.readed = 0;

                            chat.insert();

                            Poco::JSON::Object::Ptr ptr = new Poco::JSON::Object();
                            ptr->set("inserted","true");
                            Poco::JSON::Stringifier::stringify(ptr,ostr);
                        }catch(std::exception &ex){
                            std::cout << "exception:" << ex.what() << std::endl;
                        }
                    } 
                } else
                response.setStatus(Poco::Net::HTTPResponse::HTTPStatus::HTTP_INTERNAL_SERVER_ERROR);
            }

        private:
            std::string _format;
        };
        #endif // !CHATHANDLER_H