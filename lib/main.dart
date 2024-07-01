import 'package:flutter/material.dart';
import 'splash_screen.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        // Aguarde 3 segundos
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SplashScreen();
          } else {
            return DictionaryApp();
          }
        },
      ),
    );
  }
}

class DictionaryApp extends StatefulWidget {
  @override
  _DictionaryAppState createState() => _DictionaryAppState();
}

class _DictionaryAppState extends State<DictionaryApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dicionário Offline'),
        centerTitle: true,
      ),
      body: DictionaryHomePage(),
    );
  }
}

class DictionaryHomePage extends StatefulWidget {
  @override
  _DictionaryHomePageState createState() => _DictionaryHomePageState();
}

class _DictionaryHomePageState extends State<DictionaryHomePage> {
  final Map<String, List<Map<String, String>>> categoriesAndTranslations = {
    'Inglês': [
      {'word': 'Hello', 'translation': 'Olá'},
      {'word': 'Bom dia', 'translation': 'Good morning'},
      {'word': 'Boa tarde', 'translation': 'Good afternoon'},
      {'word': 'Boa noite', 'translation': 'Good evening / Good night'},
      {'word': 'Até logo', 'translation': 'See you later / Goodbye'},
      {'word': 'Olá', 'translation': 'Hello / Hi'},
      {'word': 'Adeus', 'translation': 'Goodbye / Farewell'},
      {'word': 'Por favor', 'translation': 'Please'},
      {'word': 'Obrigado(a)', 'translation': 'Thank you'},
      {'word': 'Desculpe', 'translation': 'Sorry / Excuse me'},
      {'word': 'Sim', 'translation': 'Yes'},
      {'word': 'Não', 'translation': 'No'},
      {'word': 'Goodbye', 'translation': 'Adeus'},
      {'word': 'Cat', 'translation': 'Gato'},
      {'word': 'Dog', 'translation': 'Cachorro'},
      {'word': 'Casa', 'translation': 'House'},
      {'word': 'Amor', 'translation': 'Love'},
      {'word': 'Feliz', 'translation': 'Happy'},
      {'word': 'Trabalho', 'translation': 'Work'},
      {'word': 'Cachorro', 'translation': 'Dog'},
      {'word': 'Comida', 'translation': 'Food'},
      {'word': 'Criança', 'translation': 'Child'},
      {'word': 'Tempo', 'translation': 'Time'},
      {'word': 'Paz', 'translation': 'Peace'},
      {'word': 'Liberdade', 'translation': 'Freedom'},
      {'word': 'De onde você é?', 'translation': 'Where are you from?'},
      {'word': 'Onde você mora?', 'translation': 'Where do you live?'},
      {'word': 'Qual é o seu nome?', 'translation': 'What is your name?'},
      {'word': 'Prazer em conhecê-lo(a).', 'translation': 'Nice to meet you.'},
      {'word': 'Ele', 'translation': 'He'},
      {'word': 'Ela', 'translation': 'She'},
      {'word': 'Eles', 'translation': 'They'},
      {'word': 'Elas', 'translation': 'They (feminine)'},
      {'word': 'A imaginação é mais importante que o conhecimento.', 'translation': 'Imagination is more important than knowledge.'},
      {'word': 'A paciência é a chave para alcançar grandes conquistas.', 'translation': 'Patience is the key to achieving great accomplishments.'},
      {'word': 'A beleza está em todo lugar, basta saber onde olhar.', 'translation': 'Beauty is everywhere, you just need to know where to look.'},
      {'word': 'A simplicidade é a maior sofisticação.', 'translation': 'Simplicity is the ultimate sophistication.'},
      {'word': 'O amor não conhece fronteiras.', 'translation': 'Love knows no boundaries.'},
      {'word': 'A esperança é o farol que nos guia nas noites mais escuras.', 'translation': 'Hope is the beacon that guides us through the darkest nights.'},
      {'word': 'A mudança é a única constante na vida.', 'translation': 'Change is the only constant in life.'},
      {'word': 'O conhecimento é o tesouro que ninguém pode tirar de você.', 'translation': 'Knowledge is the treasure that no one can take away from you.'},
      {'word': 'A vida é uma aventura ousada ou nada.', 'translation': 'Life is either a daring adventure or nothing at all.'},
      {'word': 'A alegria de viver está nas coisas simples.', 'translation': 'The joy of living is in the simple things.'},
      {'word': 'A vida é cheia de possibilidades.', 'translation': 'Life is full of possibilities.'},
      {'word': 'Viajar é uma maneira maravilhosa de expandir seus horizontes.', 'translation': 'Traveling is a wonderful way to broaden your horizons.'},
      {'word': 'Família é onde começa nossa história.', 'translation': 'Family is where our story begins.'},
      {'word': 'O sucesso é a soma de pequenos esforços repetidos dia após dia.', 'translation': 'Success is the sum of small efforts repeated day after day.'},
      {'word': 'A educação é a arma mais poderosa que você pode usar para mudar o mundo.', 'translation': 'Education is the most powerful weapon you can use to change the world.'},
      {'word': 'A verdadeira felicidade vem de fazer o bem aos outros.', 'translation': 'True happiness comes from doing good to others.'},
      {'word': 'A perseverança é o segredo para superar qualquer desafio.', 'translation': 'Perseverance is the key to overcoming any challenge.'},
      {'word': 'A criatividade é a inteligência se divertindo.', 'translation': 'Creativity is intelligence having fun.'},
      {'word': 'A amizade é um tesouro que enriquece nossas vidas.', 'translation': 'Friendship is a treasure that enriches our lives.'},
      {'word': 'A natureza nos lembra da beleza simples da vida.', 'translation': 'Nature reminds us of the simple beauty of life.'},
    ],
    'Espanhol': [
      {'word': 'Hola', 'translation': 'Olá'},
      {'word': 'Adiós', 'translation': 'Adeus'},
      {'word': 'Gato', 'translation': 'Gato'},
      {'word': 'Perro', 'translation': 'Cachorro'},
      {'word': 'De onde você é?', 'translation': '¿De dónde eres?'},
      {'word': 'Onde você mora?', 'translation': '¿Dónde vives?'},
      {'word': 'Qual é o seu nome?', 'translation': '¿Cuál es tu nombre?'},
      {'word': 'Prazer em conhecê-lo(a).', 'translation': 'Encantado/a de conocerte.'},
      {'word': 'Ele', 'translation': 'Él'},
      {'word': 'Ela', 'translation': 'Ella'},
      {'word': 'Eles', 'translation': 'Ellos'},
      {'word': 'Elas', 'translation': 'Ellas'},
      {'word': 'A vida está cheia de possibilidades.', 'translation': 'La vida está llena de posibilidades.'},
      {'word': 'Viajar es una forma maravillosa de ampliar tus horizontes.', 'translation': 'Viajar é uma maneira maravilhosa de expandir seus horizontes.'},
      {'word': 'La familia es donde comienza nuestra historia.', 'translation': 'A família é onde começa nossa história.'},
      {'word': 'El éxito es la suma de pequeños esfuerzos repetidos día tras día.', 'translation': 'O sucesso é a soma de pequenos esforços repetidos dia após dia.'},
      {'word': 'La educación es la herramienta más poderosa que puedes usar para cambiar el mundo.', 'translation': 'A educação é a arma mais poderosa que você pode usar para mudar o mundo.'},
      {'word': 'La verdadera felicidad proviene de hacer el bien a los demás.', 'translation': 'A verdadeira felicidade vem de fazer o bem aos outros.'},
      {'word': 'La perseverancia es la clave para superar cualquier desafío.', 'translation': 'A perseverança é a chave para superar qualquer desafio.'},
      {'word': 'La creatividad es la inteligencia divirtiéndose.', 'translation': 'A criatividade é a inteligência se divertindo.'},
      {'word': 'La amistad es un tesoro que enriquece nuestras vidas.', 'translation': 'A amizade é um tesouro que enriquece nossas vidas.'},
      {'word': 'La naturaleza nos recuerda la sencilla belleza de la vida.', 'translation': 'A natureza nos lembra da beleza simples da vida.'},
    ],
    'Chinês': [
      {'word': '你好', 'translation': 'Olá', 'intonation': 'nǐ hǎo'},
      {'word': '再见', 'translation': 'Adeus', 'intonation': 'zài jiàn'},
      {'word': '猫', 'translation': 'Gato', 'intonation': 'māo'},
      {'word': '狗', 'translation': 'Cachorro', 'intonation': 'gǒu'},
      {'word': '你来自哪里？', 'translation': 'De onde você é?', 'intonation': 'nǐ lái zì nǎ lǐ?'},
      {'word': '你住在哪里？', 'translation': 'Onde você mora?', 'intonation': 'nǐ zhù zài nǎ lǐ?'},
      {'word': '你叫什么名字？', 'translation': 'Qual é o seu nome?', 'intonation': 'nǐ jiào shén me míng zì?'},
      {'word': '很高兴认识你。', 'translation': 'Prazer em conhecê-lo(a).', 'intonation': 'hěn gāo xìng rèn shi nǐ.'},
      {'word': '他', 'translation': 'Ele', 'intonation': 'tā'},
      {'word': '她', 'translation': 'Ela', 'intonation': 'tā'},
      {'word': '他们', 'translation': 'Eles', 'intonation': 'tā men'},
      {'word': '她们', 'translation': 'Elas', 'intonation': 'tā men'},
      {'word': '谢谢', 'translation': 'Obrigado(a)', 'intonation': 'xiè xiè'},
      {'word': '早上好', 'translation': 'Bom dia', 'intonation': 'zǎo shàng hǎo'},
      {'word': '晚安', 'translation': 'Boa noite', 'intonation': 'wǎn ān'},
      {'word': '我爱你', 'translation': 'Eu te amo', 'intonation': 'wǒ ài nǐ'},
      {'word': '朋友', 'translation': 'Amigo', 'intonation': 'péng yǒu'},
      {'word': '学习', 'translation': 'Estudar', 'intonation': 'xué xí'},
      {'word': '美丽', 'translation': 'Beleza', 'intonation': 'měi lì'},
      {'word': '健康', 'translation': 'Saúde', 'intonation': 'jiàn kāng'},


    ],
  };

  String selectedCategory = 'Inglês';
  List<Map<String, String>> displayedTranslations = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    displayedTranslations = categoriesAndTranslations[selectedCategory]!;
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  bool similarIntonation(String inputIntonation, String targetIntonation) {
    final minLength = 3;
    for (var i = 0; i <= inputIntonation.length - minLength; i++) {
      final substring = inputIntonation.substring(i, i + minLength);
      if (targetIntonation.contains(substring)) {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
              hintText: 'Digite uma palavra ou frase...',
            ),
            onChanged: (text) {
              setState(() {
                displayedTranslations = categoriesAndTranslations[selectedCategory]!
                    .where((translation) =>
                        translation['word']!.toLowerCase().contains(text.toLowerCase()))
                    .toList();

                if (displayedTranslations.isEmpty && text.isNotEmpty) {
                  displayedTranslations = categoriesAndTranslations[selectedCategory]!
                      .where((translation) =>
                          translation['translation']!.toLowerCase().contains(text.toLowerCase()))
                      .toList();
                }
              });
            },
          ),
        ),
        Text('Categorias', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: categoriesAndTranslations.keys.map((category) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedCategory = category;
                    searchController.clear();
                    displayedTranslations = categoriesAndTranslations[selectedCategory]!;
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: category == selectedCategory ? Colors.blue : null,
                ),
                child: Text(category),
              ),
            );
          }).toList(),
        ),
        Expanded(
          child: displayedTranslations.isNotEmpty
              ? ListView.builder(
                  itemCount: displayedTranslations.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(displayedTranslations[index]['word']!),
                      subtitle: Text(displayedTranslations[index]['translation']!),
                      trailing: displayedTranslations[index].containsKey('intonation')
                          ? Text('Entonação: ${displayedTranslations[index]['intonation']}')
                          : null,
                    );
                  },
                )
              : Center(
                  child: Text('Sem resultados'),
                ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '© Daniel Lucena',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
