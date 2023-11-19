import 'package:flutter/material.dart';



//Tela Initial
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/icon.png',
            width: 150,
            ),
            const Text(
              'Assistente Cesari',
            ),
            const SizedBox(height: 100),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EnfermeirosPage()),
              );
            },
                child: const Text('Enfermeiros(a)'))
          ],
        ),
      ),
    );
  }
}
//FIM

//Tela Login
class EnfermeirosPage extends StatelessWidget {
  const EnfermeirosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 40, // Altura aumentada em 20 pixels
        automaticallyImplyLeading: false, // Remover botão de voltar
        elevation: 0, // Remover sombra
        backgroundColor: Colors.white, // Cor de fundo
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ), // Borda arredondada
        title:  const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person_pin_rounded,
              // Ícone "person"
              size: 48, // Tamanho do ícone
              color: Colors.black, // Cor do ícone

            ),
            SizedBox(height: 10),
            Text(
              'Enfermeiro(a)', // Nome do usuário
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
        centerTitle: true, // Centralizar conteúdo na AppBar
      ),
      backgroundColor: Colors.pinkAccent,
      body: Container(
        margin: const EdgeInsets.only(top: 30),
        color: Colors.pinkAccent, // Background rosa
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              height: 400,
              decoration: BoxDecoration(
                color: Colors.white, // Cor do Container
                borderRadius: BorderRadius.circular(10), // Borda arredondada
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'CPF',
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Senha',
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent,
                        minimumSize: const Size(250,45)
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CadastroPaciente()),
                      );
                    },

                    child: const Text('Entrar', style: TextStyle(color: Colors.black)),
                  ),
                  const SizedBox(height: 5),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amberAccent,
                      minimumSize: const Size(240,45)
                    ),
                    onPressed: () {
                      // Lógica para sair
                    },
                    child: const Text('Sair', style: TextStyle(color: Colors.black)),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white54,
                      minimumSize: const Size(240,45)
                    ),
                    onPressed: () {
                      // Lógica para esquecer a senha
                    },
                    child: const Text('Esqueci a senha', style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//FIM

//Tela Cadastro de Paciente

class CadastroPaciente extends StatelessWidget {
  const CadastroPaciente({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remover botão de voltar
        elevation: 0, // Remover sombra
        backgroundColor: Colors.pinkAccent, // Cor de fundo
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Enfermeiro(a)', // Nome do usuário
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 5),
            Icon(
              Icons.person_rounded, // Ícone "person"
              size: 48, // Tamanho do ícone
              color: Colors.white, // Cor do ícone
            ),
          ],
        ),
        centerTitle: true, // Centralizar conteúdo na AppBar
      ),
      body: Container(
        alignment: AlignmentDirectional.center,
        margin: const EdgeInsets.only(top: 30),
        color: Colors.pinkAccent, // Background rosa
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Container(
              height: 400,
              width: 600,
              decoration: BoxDecoration(
                color: Colors.white, // Cor do Container
                borderRadius: BorderRadius.circular(10), // Borda arredondada
                border: Border.all(width: 1, color: Colors.black),
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    padding: const EdgeInsets.only(top: 7, bottom: 7),
                    child: const Text(
                      'Boas vindas ao aplicativo de acompanhamento!',
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(245,255,60, 100),
                        minimumSize: const Size(250,40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: const BorderSide(width: 0.5, color: Colors.black),// Borda arredondada de 5px
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NovaPuerpera()),
                      );
                    },

                    child: const Text('Cadastrar Nova Paciente', style: TextStyle(color: Colors.black)),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(0,255,127, 100),
                      minimumSize: const Size(250,40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5), // Borda arredondada de 5px
                        side: const BorderSide(width: 0.5, color: Colors.black),
                      ),

                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PuerperasCadastradas()),
                      );
                    },
                    child: const Text('Puérpera Cadastrada', style: TextStyle(color: Colors.black)),
                  ),
                  const SizedBox(height: 70),
                  SizedBox(
                      width: 200,
                      child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white54,
                        minimumSize: const Size(100,40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5), // Borda arredondada de 5px
                        ),
                      ),
                      onPressed: () {
                        // Lógica para esquecer a senha
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.info_outline, color: Colors.black,),
                          SizedBox(width: 5),
                          Text('Saiba Mais Cesaria', style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Fim

//Nova Puerpera
class NovaPuerpera extends StatelessWidget {
  const NovaPuerpera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text('Nova Puerpera', style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: const[
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(width: 16),
        ],
      ),
      
      body: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 0.1, color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 600,
              height: 390,
              margin: const EdgeInsets.only(top: 50, left: 10, right: 10),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Nome',
                    ),
                  ),
                const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      labelText: 'Nome da Mãe',
                    ),
                  ),
                const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      labelText: 'Enfermaria',
                    ),
                  ),
                const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      labelText: 'Leito',
                    ),
                  ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Preparatorio()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text('Cadastrar', style: TextStyle(color: Colors.black),),
                ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// FIM
//---------------------------------
//Preparatorio

class Preparatorio extends StatelessWidget {
  const Preparatorio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text('Puerpera', style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: const [
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Container(
        alignment: AlignmentDirectional.center,
        width: 500,
        height: 400,
        margin:const EdgeInsets.all(20),
        padding:const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 0.4, color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExameFisico()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent[100],
                padding: const EdgeInsets.all(15),
                minimumSize: const Size(260,40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(width: 0.5, color: Colors.black),
                ),
              ),
              child: const Text('EXAME FÍSICO', style: TextStyle(color: Colors.black),),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CheckUp2()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[50],
                padding: const EdgeInsets.all(15),
                minimumSize: const Size(250,40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(width: 0.5, color: Colors.black),
                ),
              ),
              child: const Text('AVALIAÇÃO DO CENTRO CIRÚRGICO', style: TextStyle(color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}

//Fim
//------------------------------
//ExameFisico

class ExameFisico extends StatefulWidget {
  const ExameFisico({super.key});

  @override
  State<ExameFisico> createState() => _ExameFisicoState();
}

class _ExameFisicoState extends State<ExameFisico> {
  final List<String> opcoes = ["Nada", "Opção 2", "Opção 3"];
  final List<String> mucosa = ["Nada", "Hipocorada", "Normacorada", "Hipercorada"];
  final List<String> abdomen = ["Nada", "flácido", "distendido"];
  final List<String> utero = ["Nada", "adequado", "inadequado", "não palpável"];

  String dropdownValue = "Nada";
 // Valor inicial do dropdown
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text('Puerpera', style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: const[
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            const Text('Exame Físico'),
            const Row(
              children: [
                Expanded(child: TextField(decoration: InputDecoration(labelText: 'TA:'))),
                Expanded(child: TextField(decoration: InputDecoration(labelText: 'FR:'))),
                Expanded(child: TextField(decoration: InputDecoration(labelText: 'FC:'))),
                Expanded(child: TextField(decoration: InputDecoration(labelText: 'PA:'))),
              ],
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Mucosa'),
              items: ["Nada", "Hipocorada", "Normacorada", "Hipercorada"].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(), onChanged: (String? value) {  },
            ),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Abdômen'),
              items: ["Nada", "flácido", "distendido"].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(), onChanged: (String? value) {},
            ),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Útero'),
              items: ["Nada", "adequado", "inadequado", "não palpável"].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(), onChanged: (String? value) {  },
            ),
            Row(
              children: [
                Expanded(child: TextField(decoration: InputDecoration(labelText: 'Altura do Fundo Últerino:'))),
              ],
            ),




            /*
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Altura do Fundo Úterino'),
              items: ["Opção 1", "Opção 2", "Opção 3"].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(), onChanged: (String? value) {  },
            ),
             */
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Lóquios'),
              items: ["Opção 1", "Opção 2", "Opção 3"].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(), onChanged: (String? value) {  },
            ),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Coloração'),
              items: ["Opção 1", "Opção 2", "Opção 3"].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(), onChanged: (String? value) {  },
            ),
            const Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CheckUp()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent[100],
                  padding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(width: 0.5, color: Colors.black),
                  ),
                ),
                child: const Text('Próximo', style: TextStyle(color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Fim
//-------------------------------------
//CheckUP

class CheckUp extends StatefulWidget {
  const CheckUp({super.key});

  @override
  State<CheckUp> createState() => _CheckUpState();
}

class _CheckUpState extends State<CheckUp> {
  final List<String> opcoes = ["Opção 1", "Opção 2", "Opção 3"];

  String dropdownValue = "Opção 1";
  // Valor inicial do dropdown
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text('Puerpera', style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: const[
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Container(
        width: 600,
        height: 600,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text('Eliminação Urinaria:'),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                  ),
                    onPressed:() {},
                    child: const Text('SIM', style: TextStyle(color: Colors.black),)
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent[200],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                  ),
                    onPressed: (){},
                    child: const Text('NÃO', style: TextStyle(color: Colors.black),)
                )
              ],
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 0.7, color: Colors.black),
              ),
              width: 500,
              height: 110,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('Quantidade no turno:'),
                  SizedBox(
                    width: 80,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: '0,00',
                      ),
                    ),
                  ),
                  const Text('ml')
                ],
              ),
            ),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Eliminação Intestinal:'),
              items: ["Opção 1", "Opção 2", "Opção 3"].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(), onChanged: (String? value) {  },
            ),

            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Edema:'),
              items: ["Opção 1", "Opção 2", "Opção 3"].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(), onChanged: (String? value) {  },
            ),
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CheckUp2()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent[100],
                  padding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(width: 0.5, color: Colors.black),
                  ),
                ),
                child: const SizedBox(
                  width: 190,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Salvar Dados Cadastrais', style: TextStyle(color: Colors.black)),
                      Icon(Icons.save, color: Colors.black,)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Fim
//------------------------
// CheckUp2


class CheckUp2 extends StatefulWidget {
  const CheckUp2({super.key});

  @override
  State<CheckUp2> createState() => _CheckUp2State();
}

class _CheckUp2State extends State<CheckUp2> {
  final List<String> opcoes = ["Opção 1", "Opção 2", "Opção 3"];
  bool cicatrizacao = false; // Valor inicial da CheckBox Cicatrização
  bool complicacao = false; // Valor inicial da CheckBox Complicação

  String dropdownValue = "Opção 1";
  // Valor inicial do dropdown
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text('Puerpera', style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: const[
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Container(
        width: 600,
        height: 600,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text('Avaliação do Sítio Cirurgico:'),
            ),
            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 0.7, color: Colors.black),
              ),
              width: 500,
              height: 120,
              margin: const EdgeInsets.only(left: 10, right: 10),
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text('FO (Cesária):')
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: cicatrizacao,
                        shape: const CircleBorder(), // Torna a CheckBox redonda
                        onChanged: (value) {
                          setState(() {
                            cicatrizacao = value!;
                          });
                        },
                      ),
                      const Text('Cicatrização'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: complicacao,
                        shape: const CircleBorder(), // Torna a CheckBox redonda
                        onChanged: (value) {
                          setState(() {
                            complicacao = value!;
                          });
                        },
                      ),
                      const Text('Complicação'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  // Lógica para o próximo passo
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow.shade300,
                  padding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(width: 0.5, color: Colors.black),
                  ),
                ),
                child: const SizedBox(
                  width: 220,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.info_outline, color: Colors.black),
                      Text('Orientação e Guia de Cuidados', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40,),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Preparatorio()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent[100],
                  padding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(width: 0.5, color: Colors.black),
                  ),
                ),
                child: const SizedBox(
                  width: 220,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.save, color: Colors.black),
                      Text('Salvar Dados Coletados', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Fim
//--------------------
//Puerpera Cadastrada

class PuerperasCadastradas extends StatelessWidget {
  const PuerperasCadastradas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text('Assistência', style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: const [
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: 600,
            height: 400,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 0.7, color: Colors.black),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RowItem(number: "1", color: Colors.green),
                SizedBox(height: 30),
                RowItem(number: "2", color: Colors.green),
                SizedBox(height: 30),
                RowItem(number: "3", color: Colors.green),
                SizedBox(height: 30),
                RowItem(number: "4", color: Colors.green),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RowItem extends StatelessWidget {
  final String number;
  final Color color;

  const RowItem({super.key, required this.number, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              number,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(width: 1),
        ElevatedButton(
          onPressed: () {
            // Lógica para o botão "Puérpera"
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow[300],
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            minimumSize: const Size(240,45)
          ),
          child: const Text('Puérpera', style: TextStyle(color: Colors.black),),
        ),
      ],
    );
  }
}