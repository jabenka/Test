# Test
По порядку
1.Я делал все на mysql так как cкачивать постгру 3 часа из за санкций а спрингу в целом побоку главное драйвер другой
2.что с докером что с миграцией работаю впервые в жизни и вотс докером не сложилось потому что ликвибейс упорно говорит что не видит драйвер,в интернете решений куча но ни одному из них не работает у меня(я добавлял вручную в прект драйвер все равно у ликвибейса ноль эмоций),если возможно хочу узнать что не так с докером

Маппинги:
http://localhost:9120/auth/login -body{
    "name": "admin",
    "password": "admin"

}-АдминЛогин 
http://localhost:9120/auth/login -body{
    "name": "guest",
    "password": "guest"
}-юзерЛогин
http://localhost:9120/user/me-token
http://localhost:9120/admin/me-token
/me-проверка на роли и прочее
http://localhost:9120/admin/addProject?user_name=guest&project_name=project3&project_desc=desc&time=20-добавление проекта по юзернейму,нужен токен админа(проверка на роль есть)
http://localhost:9120/user/updatetime?project_name=project&time=2-трекние времени(нужен токен юзера)
http://localhost:9120/admin/addUser-добваление юзера нужен body и токне админа
{
    "name": "admin2",
    "password": "admin2"
}
но роль будет юзер))
