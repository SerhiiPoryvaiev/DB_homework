В рамках БД music напишите след/запросы:
1. Вывести имена незаблокированных юзеров не из France
db.users.find(
    {
        is_blocked: { $ne: true },
        country: { $ne: 'France' }
    },
    {_id:0, fullname:1}
    
)
2.Разблокировать всех юзеров не из Germany
db.users.updateMany(
     { country: { $ne: 'Germany' }},
    
    {$unset: {
            is_blocked: null
        }
    }
)
3.Вывести названия треков продолжительностью от 1 до 10 мин
db.tracks.find(
    { duration_secs: { $gte: 1 * 60, $lte: 10 * 60 } },
    { title: 1, _id: 0 }
)
4.Заблокировать юзеров из France
db.users.updateMany(
    { country: 'France' },
    { $set: { is_blocked: true } }
)
5. https://dbdiagram.io/d/6530d7cbffbf5169f000f1a5