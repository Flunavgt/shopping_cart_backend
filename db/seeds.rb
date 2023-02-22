# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "TestUser")

Bike.create([
  {
    brand: "Hytera",
    model: "PNC 360",
    photo: "https://www.hytera.la/images/PNC360S_front-1.png",
    power: 5,
    weight: 166,
    price: 110,
    description: "La radio PoC (PTT Over Cellular) opera a través de la red de banda ancha 3G, 4G y LTE para transmitir información al instante con un solo botón.
    certificado IP67 y MIL-STD-810H para resistir las condiciones más desafiantes y bluetooth para conectar accesorios como manos libres y protectores de oídos.
    "
  },
  {
    brand: "Hytera",
    model: "PNC 370",
    photo: "https://hytera-europe.com/imager/images/14281/PNC370_f9d35c2e75cded6d5435415681c0a155.png",
    power: 5,
    weight: 227,
    price: 200,
    description: "Para mejorar la productividad y la eficiencia, muchas organizaciones están adoptando Push-To-Talk sobre redes 3G/4G/WiFi, que proporciona
    comunicaciones instantáneas con gran cobertura y conectividad nacional o internacional."
  },
  {
    brand: "Hytera",
    model: "PNC 380",
    photo: "https://images.hytera.us/images/PNC380_Highlights.png?auto=compress%2Cformat&fit=max&h=460&q=80&w=830&s=22d1c252ae5cbe1eedb724c1557819e5",
    power: 3,
    weight: 211,
    price: 180,
    description: "El Radio PoC PNC380 de Hytera es una dispositivo pulsar para hablar sobre celular que combina las comunicaciones instantáneas y las aplicaciones
    multimedia en un único dispositivo. Capaz de operar sobre redes 2G, 3G, 4G y Wi-Fi, este PoC le ofrece servicios ricos en datos como transmisión de datos y video 4G."
  },
  {
    brand: "Hytera",
    model: "PNC 550",
    photo: "https://hytera-europe.com/imager/images/31472/PNC550-main-image_f9d35c2e75cded6d5435415681c0a155.png",
    power: 2.5,
    weight: 320,
    price: 150,
    description: "El PNC550 es un terminal PoC que integra las funciones de un smartphone y Pulsar para Hablar profesional sobre una funcionalidad de celular."
  },
  {
    brand: "Hytera",
    model: "PNC 560",
    photo: "https://hytera-europe.com/imager/images/349093/HYTERA-PNC560_7c3bb7433ca337bb1e85cb38e974272e.png",
    power: 2,
    weight: 302,
    price: 150,
    description: "El PNC560 le ofrece lo mejor de ambos mundos: una radio PoC profesional y un teléfono inteligente. Como dispositivo de comunicación instantánea, le ofrece
    pulsar para hablar (MCPTT) de misión crítica a través de redes 5G/LTE con velocidad ultrarrápida, lo que ayuda a una comunicación fluidas con solo presionar una tecla."
  },
  {
    brand: "Hytera",
    model: "PT 350",
    photo: "https://hytera-europe.com/imager/images/25773/PT350_1_5472332afa344033d2bf9e7b6b9d883e.png",
    power: 5,
    weight: 202,
    price: 150,
    description: "El PT350 siempre resiste los entornos más duros, como fábricas, puertos o minería a cielo abierto. Ofrece una voz ultra clara sin importar el entorno ruidoso
    en el que deban operar. Con una interfaz de usuario simple y una operación fácil, el PT350 brinda a los usuarios menos distracciones durante la comunicación de voz."
  },
])

Reservation.create(user_id: User.first.id, bike_id: Bike.first.id, start_date: "27/06/2023", end_date: "27/06/2023", location: "Guatemala")
