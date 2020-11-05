# See:
# http://www.gnu.org/software/make/manual/make.html
# http://linuxlib.ru/prog/make_379_manual.html

PYENV=/home/grey2k/.pyenv/versions/click-test

.PHONY : build

# This allows us to accept extra arguments
%:
    @:
args = `arg="$(filter-out $@,$(MAKECMDGOALS))" && echo $${arg:-${1}}`

### Commands
rebuild:
	docker-compose down && docker-compose build && docker-compose up -d && docker-compose logs -f

exec:
	"${PYENV}"/bin/dbgen $(call args)

proxysql-admin:
	mysql -uradmin -pradmin -h 127.0.0.1 -P6032 --prompt='Admin> '
