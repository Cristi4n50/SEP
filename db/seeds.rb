Actestado.create!([
  {nombre: "Enproceso", descripcion: "Enproceso"},
  {nombre: "Pendiente", descripcion: "Pendiente"},
  {nombre: "Terminado", descripcion: "Terminado"},
  {nombre: "Culminación", descripcion: "Culminación"}
])
Actividad.create!([
  {fecha_inicio: "2013-11-22", fecha_fin: "2013-12-27", descripcion: "Realización esqueleto SEP", objetivo: "Tener un proyecto en producción", nombre: "Modelo ER", actividad1: "Crear bases de datos", actividad2: "Realización  Scaffold", actividad3: "Bootstrap en Formularios", categoria_id: 1, actestado_id: 3, asignar_proy_id: 1}
])
Area.create!([
  {nombre: "Sistemas", sigla: "Area de sistema de información"}
])
AsignarProy.create!([
  {nombreproyecto: "Sep", objetivo: nil, estudiante_id: 1, objsyproy_id: nil}
])
Assignment.create!([
  {user_id: 1, role_id: 1},
  {user_id: 3, role_id: 2},
  {user_id: 4, role_id: 2},
  {user_id: 2, role_id: 3},
  {user_id: 1, role_id: 2},
  {user_id: 1, role_id: 3},
  {user_id: 5, role_id: 2},
  {user_id: 6, role_id: 2},
  {user_id: 7, role_id: 2},
  {user_id: 8, role_id: 2},
  {user_id: 9, role_id: 2},
  {user_id: 10, role_id: 2},
  {user_id: 11, role_id: 2},
  {user_id: 12, role_id: 2},
  {user_id: 14, role_id: 4},
  {user_id: 15, role_id: 5},
  {user_id: 15, role_id: 5}
])
Bitacora.create!([
  {estudiante_id: 1, fecha_inicio: "2013-11-22", fecha_fin: "2013-12-27", descripcion: "Realización esqueleto SEP", objetivo: "Tener un proyecto en producción", nombre: "Modelo ER", actividad1: "Crear bases de datos", actividad2: "Realización  Scaffold", actividad3: "Bootstrap en Formularios", actividad4: nil, actividad5: nil, nombreproyecto: "Sep", categoria_id: 1, actestado_id: 3, asignar_proy_id: nil, actividad_id: nil},
  {estudiante_id: 2, fecha_inicio: nil, fecha_fin: nil, descripcion: "", objetivo: "", nombre: "", actividad1: "", actividad2: "", actividad3: "", actividad4: nil, actividad5: nil, nombreproyecto: "", categoria_id: nil, actestado_id: nil, asignar_proy_id: nil, actividad_id: nil}
])
Categoria.create!([
  {nombre: "Analisis  Base de datos", descripcion: "Analistas  de sistemas"},
  {nombre: "Creación Aplicativos", descripcion: "Creaciones deaplicativos"},
  {nombre: "Soporte Tecnico", descripcion: "Soporte Tecnico"},
  {nombre: "Tests Aplicativo", descripcion: "Tests Aplicativo"},
  {nombre: "Documentación De Proyectos", descripcion: "Documentación De Proyectos"}
])
Centro.create!([
  {codigo: "899999034-9", nombre: "Centro de Formación en Diseño, Confección y Moda", direccion: "Calle 63 N° 58B - 03 Itaguí- Calatrava"}
])
Empresa.create!([
  {nombre: "SENA", nit: "899999034-9", dv: "1", direccion: "Calle 63 N 58 B -03, Calatrava", telefono: "5149290", fax: "3717896", email: "william.betancur@gmail.com", paginaweb: "www.sena.edu.co"},
  {nombre: "Topasa", nit: "823.034.991", dv: "1", direccion: "Carrea 62 sur .44-43", telefono: "3200180", fax: "2882364", email: "ghumana@topasa.com", paginaweb: "www.topasa.com"},
  {nombre: "RISKS PROTECTION", nit: "900171792", dv: "-2", direccion: "CRR 43B #32 SUR 17", telefono: "4481112", fax: "4481112", email: "servicioalcliente@risksprotection.com", paginaweb: "www.risksprotectio.com"},
  {nombre: "Tuya S.A", nit: "860032330", dv: "0", direccion: "cll 4 sur # 43 a 109", telefono: "3198210", fax: "3526275", email: "reclutamiento@tarjetaexito.com.co", paginaweb: "www.tuya.com.co"},
  {nombre: "Personalsoft S.A.S", nit: "811.022.382-5", dv: "5", direccion: "Cra. 65 N° 48 - 162", telefono: "403 7250", fax: "434 0657", email: "contactenos@personalsoft.com.co", paginaweb: "www.personalsoft.com"},
  {nombre: "Alimentos carnicos S.A.S", nit: "890304130-4", dv: "1", direccion: "CL 25 A sur 48-150", telefono: "3355500", fax: "2704904", email: "pralp@alimentoscarnicos.com.co", paginaweb: "www.alimentoscarnicos.com.co"}
])
Estudiante.create!([
  {nombre1: "José", nombre2: "Gregorio", apellido1: "Ávila", apellido2: "Cerezo", genero: false, email: "gregory1308@misena.edu.co", documento: "1037607498", tipopractica_id: 1, ficha_id: 1, jefe_id: 1, tipodoc_id: 1},
  {nombre1: "Cristian", nombre2: "Arley", apellido1: "Jiménez", apellido2: "Vélez", genero: false, email: "cristiii4n@misena.edu.co", documento: "1026152647", tipopractica_id: 1, ficha_id: 1, jefe_id: 1, tipodoc_id: 1},
  {nombre1: "Juan", nombre2: "Pablo", apellido1: "Gallego", apellido2: "Vélez", genero: false, email: "jpgallego4@misena.edu.co", documento: "1036652412", tipopractica_id: 1, ficha_id: 1, jefe_id: 1, tipodoc_id: 1},
  {nombre1: "Christiam", nombre2: "Camilo", apellido1: "Gomez", apellido2: "Gañan", genero: false, email: "chrystiamgg@misena.edu.co", documento: "1036626528", tipopractica_id: 1, ficha_id: 1, jefe_id: 1, tipodoc_id: 1},
  {nombre1: "Alejandro", nombre2: "", apellido1: "Saldarriaga", apellido2: "Alzate", genero: false, email: "Alejoalzate@misena.edu.co", documento: "1036659445", tipopractica_id: 1, ficha_id: 1, jefe_id: 1, tipodoc_id: 1},
  {nombre1: "Daniela", nombre2: "", apellido1: "Cañaveral", apellido2: "Santamaria", genero: true, email: "daniela.santa@misena.edu.co", documento: "1.036.954.603", tipopractica_id: 1, ficha_id: 1, jefe_id: 2, tipodoc_id: 1},
  {nombre1: "Daniela", nombre2: "", apellido1: "Alvarez", apellido2: "Vasquez", genero: true, email: "dannymona@misena.edu.co", documento: "1040742177", tipopractica_id: 1, ficha_id: 1, jefe_id: 3, tipodoc_id: 1},
  {nombre1: "Geraldine", nombre2: "", apellido1: "Arenas", apellido2: "Saldarriaga", genero: true, email: "geral1@misena.edu.co", documento: "1035428981", tipopractica_id: 1, ficha_id: 1, jefe_id: 5, tipodoc_id: 1},
  {nombre1: "Verónica", nombre2: "", apellido1: "Restrepo", apellido2: "Zapata", genero: true, email: "verorestrepo@misena.edu.co", documento: "1152451380", tipopractica_id: 1, ficha_id: 1, jefe_id: 4, tipodoc_id: 1},
  {nombre1: "Alejandro", nombre2: "", apellido1: "Henao", apellido2: "Betancur", genero: false, email: "ahenao83@misena.edu.co", documento: "1036621138", tipopractica_id: 1, ficha_id: 1, jefe_id: 6, tipodoc_id: 1},
  {nombre1: "", nombre2: "", apellido1: "", apellido2: "", genero: nil, email: "", documento: "", tipopractica_id: nil, ficha_id: nil, jefe_id: nil, tipodoc_id: nil}
])
Ficha.create!([
  {numero: "323921", fecha_inicio_practicas: "2013-10-10", fecha_fin_practicas: "2014-04-09", programa_id: 1}
])
Jefe.create!([
  {nombres: "Rafael Alejandro", apellidos: "Pelaez Montoya", cargo: "Gerente de Proyectos", cedula: "", telefono: "403 72 50", email: "rapelaez@personalsoft.com.co", empresa_id: 5, tipodoc_id: 1},
  {nombres: "William Fernando", apellidos: "Betancur Galeano", cargo: "Ingeniero Sistemas", cedula: "71706730", telefono: "5149290", email: "william.betancur@gmail.com", empresa_id: 1, tipodoc_id: 1},
  {nombres: "Jaime Garcia", apellidos: "Garcia", cargo: "Ingeniero Sistemas", cedula: "123456789", telefono: "3200180", email: "sistemas@topasa.com", empresa_id: 2, tipodoc_id: 1},
  {nombres: "davinson  Montoya", apellidos: "Montoya", cargo: "Ingeniero Sistemas", cedula: "", telefono: "4481112", email: "davinson.montoya@risksprotection.com", empresa_id: 3, tipodoc_id: 1},
  {nombres: "Diego Hernando", apellidos: "Velez Rodriguez", cargo: "Jefe gestión aplicaciones", cedula: "", telefono: "3198210", email: "dvelez@tarjetaexito.com.co", empresa_id: 4, tipodoc_id: 1},
  {nombres: "Juliana  Gil", apellidos: "Gil Betancourt", cargo: "Planeadora abastecimiento", cedula: "", telefono: "3355500", email: "jgbetancourt@alimentoscarnicos.com.co", empresa_id: 6, tipodoc_id: 1}
])
Programa.create!([
  {nombre: "Analisis y desarrollo de sistema de información", version: "2012", codigo: "323921", centro_id: 1, titulacion_id: 1}
])
Role.create!([
  {name: "Administrador"},
  {name: "Aprendiz"},
  {name: "Jefes"},
  {name: "Directivos"},
  {name: "Monitores"}
])
TipoFactor.create!([
  {nombre: "Factores Actitudinales y comportamentales", sigla: "Actitudinales y comportamentales"},
  {nombre: "Factores Técnicos", sigla: "Factores Técnicos"}
])
Tipodoc.create!([
  {descripcion: "Cedula  Ciudadania", sigla: "CC"},
  {descripcion: "Tarjeta Identidad", sigla: "T.i"}
])
Tipopractica.create!([
  {nombre: "Contrato de Aprendizaje", descripcion: "Contrato de Aprendizaje"},
  {nombre: "Vinculación Laboral o Contractual", descripcion: "Vinculación Laboral o Contractual"},
  {nombre: "Apoyo a una unidad productiva familiar", descripcion: "Apoyo a una unidad productiva familiar"},
  {nombre: "Monitorias", descripcion: "Monitorias"},
  {nombre: "Pasantías", descripcion: "Pasantías"},
  {nombre: "Participación en un Proyecto Productivo en SENA", descripcion: "Participación en un Proyecto Productivo en SENA"},
  {nombre: "Apoyo a una institución estatal, nacional, territorial.", descripcion: "titución estatal, nacional, territorial."}
])
Titulacion.create!([
  {descripcion: "Tecnologo", sigla: "Tg"},
  {descripcion: "Tecnico", sigla: "Tc"}
])
User.create!([
  {username: "71706730", email: "william.betancur@gmail.com", crypted_password: "$2a$10$gC06/Z6YxilqM2YQ9IQet.T9oGjz.yen7oxhsgM7xRSRKLxhkshOK", salt: "yUGqa6pqGSssUzFbPHKH", role_id: nil, role: "jefe", name: nil, lastname: nil, numberidentification: nil, phone: nil, ip: nil, charge: nil, tipodoc_id: nil},
  {username: "1037607498", email: "gregory1308@misena.edu.co", crypted_password: "$2a$10$snTa7gwviGlGACBIiqQQGuwB8D.1IKpUcHXo.ceFzpo9VK99oCiJS", salt: "W37ySAryCgxGpRn9qp4t", role_id: nil, role: "aprendiz", name: nil, lastname: nil, numberidentification: nil, phone: nil, ip: nil, charge: nil, tipodoc_id: nil},
  {username: "1026152647", email: "cristiii4n@misena.edu.co", crypted_password: "$2a$10$OJe9CRPQKD.YPgKhE3EHwuDuVFXlq5ZsrzzUsjGkipDHWdh7.HKI6", salt: "M4zpyqgJy4Gb65tj8qSk", role_id: nil, role: "aprendiz", name: nil, lastname: nil, numberidentification: nil, phone: nil, ip: nil, charge: nil, tipodoc_id: nil},
  {username: "1036652412", email: "jpgallego4@misena.edu.co", crypted_password: "$2a$10$DeiD4u2BLEVVRAjaENL1F.jTsENthq3IlXKmx1kMTDL96vQjdLVka", salt: "a1LwuxNVButhk8po6WSC", role_id: nil, role: "aprendiz", name: nil, lastname: nil, numberidentification: nil, phone: nil, ip: nil, charge: nil, tipodoc_id: nil},
  {username: "1036626528", email: "chrystiamgg@misena.edu.co", crypted_password: "$2a$10$YQNPd.ih4uOEH7LBuJJkN.JOi2KnBBo2qGiZCizsdhNajUhsLcW5e", salt: "2RGzizYEjXLkFUsxKpoK", role_id: nil, role: "aprendiz", name: nil, lastname: nil, numberidentification: nil, phone: nil, ip: nil, charge: nil, tipodoc_id: nil},
  {username: "1036659445", email: "Alejoalzate@misena.edu.co", crypted_password: "$2a$10$YlchfcbbQLYS963rc.mXy.9Tn0DmRZXqNTFNNBVt0sqFicGfRxGoG", salt: "2grkzLht4MMKTSp7YqXy", role_id: nil, role: "aprendiz", name: nil, lastname: nil, numberidentification: nil, phone: nil, ip: nil, charge: nil, tipodoc_id: nil},
  {username: "1.036.954.603", email: "daniela.santa@misena.edu.co", crypted_password: "$2a$10$8itGGiHfNPhQnjl2vUP5feIdmHuOVlTdzd0j4jHl3WVunpDWWs.0m", salt: "FsPA4zHShEUwijttt2Kt", role_id: nil, role: "aprendiz", name: nil, lastname: nil, numberidentification: nil, phone: nil, ip: nil, charge: nil, tipodoc_id: nil},
  {username: "1040742177", email: "dannymona@misena.edu.co", crypted_password: "$2a$10$NmioW29JeKV.mt8bIqJzV.CYjWUj/VEUqCSyfaz3YWkPSrmvyqFeu", salt: "1zxL3VjgSgJjiNEWzuH6", role_id: nil, role: "aprendiz", name: nil, lastname: nil, numberidentification: nil, phone: nil, ip: nil, charge: nil, tipodoc_id: nil},
  {username: "1035428981", email: "geral1@misena.edu.co", crypted_password: "$2a$10$Ig6Uld2oGZAzk9N5YK6BoO0QLH8NmqrOL3l13OVkJMPR7PrTjJGau", salt: "gHA8zcyGKq5fcgpZ4ETs", role_id: nil, role: "aprendiz", name: nil, lastname: nil, numberidentification: nil, phone: nil, ip: nil, charge: nil, tipodoc_id: nil},
  {username: "1152451380", email: "verorestrepo@misena.edu.co", crypted_password: "$2a$10$rABtm6HnXJ3KPF7UT0QBV.VyoquvIoWVz6RMcKKlXxqoY4layUHoy", salt: "XkCXWgbXkzmsmLu4hgss", role_id: nil, role: "aprendiz", name: nil, lastname: nil, numberidentification: nil, phone: nil, ip: nil, charge: nil, tipodoc_id: nil},
  {username: "1036621138", email: "ahenao83@misena.edu.co", crypted_password: "$2a$10$VTfhKoRrXmgaadcl8rIqbOQeYLAtcdgy2CMpCqHSHZchr9cHqW1Ba", salt: "TXoRE3yepf6dCSZu52Bc", role_id: nil, role: "aprendiz", name: nil, lastname: nil, numberidentification: nil, phone: nil, ip: nil, charge: nil, tipodoc_id: nil},
  {username: "123456789", email: "sistemas@topasa.com", crypted_password: "$2a$10$waa1H.zQQmIdpbtjgW9cKePRr5RZZLU1.xog1478sUPzALZQnOMBm", salt: "bMyAg7ki5gUZ4brFcJaG", role_id: nil, role: "jefe", name: nil, lastname: nil, numberidentification: nil, phone: nil, ip: nil, charge: nil, tipodoc_id: nil},
  {username: "dalbysan@misena.edu.co", email: "dalbysan@misena.edu.co", crypted_password: "$2a$10$i0jT4vZwVh/QML9DgKr2tuboj1yB9WSm7RAyFYEkUVudvg5iIwyM2", salt: "yPF9C8Y8DatNpr4qQxEn", role_id: nil, role: "directivo", name: " Yuth Dalby ", lastname: "Sanchez ", numberidentification: "", phone: "5149290", ip: "43109", charge: "Líder de Relacionamiento ", tipodoc_id: 1},
  {username: "pcarmona@misena.edu.co", email: "pcarmona@misena.edu.co", crypted_password: "$2a$10$DIC7fGZGqcXibix5S/4wmO4AEAx7u3muyD/A9Uj3sWBISy2HrlQpm", salt: "qxiPH5F5YwqwYgghJo2i", role_id: nil, role: "monitor", name: "Paulo Andrés ", lastname: "Carmona Zapata", numberidentification: "", phone: "5149290", ip: "43206", charge: "Especialista en TI", tipodoc_id: 1},
  {username: "899999034-9", email: "admin@gmail.com", crypted_password: "$2a$10$a9TbrS8kBb8FHOc.0JTeBOhK/R.4Pl/KzGEzvHG1T3zzbPpLt6wRa", salt: "GKrzJbSE4ptB11beMs2A", role_id: nil, role: "admin", name: "", lastname: "", numberidentification: "", phone: "", ip: "", charge: "", tipodoc_id: nil}
])
