# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#удаляем старые данные
User.delete_all
#сбрасываем счетчик
User.reset_pk_sequence
User.create([{ name: 'Sheldon' , email: 'sheldon@mail.ru', password: "sheldon", password_confirmation: "sheldon"},
            { name: 'Leonard', email: 'leonard@mail.ru', password: "leonard", password_confirmation: "leonard"},
            { name: 'Qwerty', email: 'qwerty@mail.ru', password: "qwerty", password_confirmation: "qwerty"},
            { name: '123456', email: 'annie_v@bk.ru', password: "123456", password_confirmation: "123456"}
          ])

#удаляем старые данные
Image.delete_all
#сбрасываем счетчик
Image.reset_pk_sequence
Image.create([
                 {name: 'Айвазовский, Неаполитанский залив', file: 'neapolitansky-zaliv.jpg', theme_id:2, ave_value: 0},
                 {name: 'Айвазовский, Девятый Вал', file: 'aivazovskii_9val.jpg', theme_id:2, ave_value: 0},
                 {name: 'Пикассо, Чтение', file: 'picasso_read.jpg', theme_id:3, ave_value: 0},
                 {name: 'Пикассо, Средиземноморский пейзаж', file: 'Pablo-Picasso_Paysage-mediterraneen_1952.jpg', theme_id:3, ave_value: 0},
                 {name: 'Пикассо', file: 'picasso_lubit.jpg', theme_id:3, ave_value: 0},
                 {name: 'Брейгель, Вавилон', file: 'breigel_vavilon.jpg', theme_id:4},
                 {name: 'Брейгель, Зимний пейзаж с путешественниками', file: 'breigel_putesh.jpg', theme_id:4, ave_value: 0},
                 {name: 'Брейгель, Слепые', file: 'breigel_slepye.jpg', theme_id:4, ave_value: 0},
                 {name: 'Дали, Память', file: '/dali_memory.jpg', theme_id:5, ave_value: 0},
                 {name: 'Дали, В порту Тель-Авива', file: 'Dali-tv.jpg', theme_id:5, ave_value: 0},
                 {name: 'Дали, Лебеди, отраженные в слонах', file: '/lebedi_otrazhennuyy_v_slonah.jpg', theme_id:5, ave_value: 0},
                 {name: 'Вангог, Ночь', file: '/vangog_noch.jpg', theme_id:6, ave_value: 0},
                 {name: 'Вангог, Дикие розы', file: 'vangog_rose.jpg', theme_id:6, ave_value: 0},
                 {name: 'Вангог, Натюрморт: ваза с ирисами на желтом фоне', file: 'vangog_iris.jpg', theme_id:6, ave_value: 0},
                 {name: 'Врубель, Демон', file: '/vrubel_demon.jpg', theme_id:7, ave_value: 0},
                 {name: 'Рембрант, Дозор', file: 'rembrant_dozor', theme_id:7, ave_value: 0},
                 {name: 'Малевич, Квадрат', file: 'malevich_kvadrat.jpg', theme_id:7, ave_value: 0},
                 {name: 'Васнецов, Алекнушка', file: 'vasnecov_alenushka.jpg', theme_id:7, ave_value: 0},
                 {name: 'Желтый', file: 'yellow.jpg', theme_id:8, ave_value: 0},
                 {name: 'Синий', file: 'blue.jpg', theme_id:8, ave_value: 0},
                 {name: 'Зеленый', file: 'green.jpg', theme_id:8, ave_value: 0}
             ])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([
                 {name: '-----'},  # 1
                 # {name: 'Лучшая картина Кандинского'}, # 2
                 # {name: 'Лучшая картина Рериха'}, # 3
                 # {name: 'Лучшая картина Ван Гога'}, # 4
                 {name: "Какое из произведений художника Айвазовского наилучшим образом характеризует его творчество?"},      # 2
                 {name: "Какое из произведений художника П.Пикассо наилучшим образом характеризует его творчество?"},      # 3
                 {name: "Какое из произведений художника Брейгеля наилучшим образом характеризует его творчество?"},      # 4
                 {name: "Какое из произведений художника Дали наилучшим образом характеризует его творчество?"},  # 5
                 {name: "Какое из произведений художника В.ван Гога наилучшим образом характеризует его творчество?"},     # 6
                 {name: "Какое из изображений является наиболее гармоничным по вашему восприятию?"},                       # 7
                 {name: "Какой цвет автомобиля является наиболее популярным в этом году?"}                                 # 8

             ])