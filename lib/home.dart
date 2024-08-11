import 'package:flutter/material.dart';

class CheckboxRadiobutton extends StatefulWidget {
  const CheckboxRadiobutton({super.key});

  @override
  State<CheckboxRadiobutton> createState() => _CheckboxRadiobuttonState();
}

class _CheckboxRadiobuttonState extends State<CheckboxRadiobutton> {

  bool? japonesa = false;
  bool? brasileira = false;
  bool? mexicana = false;

  bool corpoBrasileira = false;
  bool corpoMexicana = false;

  String? escolhaUsuario;
  String? escolhaCor;

  bool corpoCorAzul = false;
  bool corpoCorVermelho = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkbox e Radiobutton"),
        backgroundColor: Colors.deepOrange[200],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Comida japonesa"),
              Checkbox(
                value: japonesa,
                onChanged: (bool? valor){
                  setState(() {
                    japonesa = valor;
                  });
                  japonesa = valor;
                  //print(valor);
                  //print(retorno);

                },
              ),
            ],
          ),
          const SizedBox(height: 25),
          CheckboxListTile(
            title: const Text("Comida brasileira"),
            subtitle: const Text("topzera"),
            activeColor: Colors.deepOrange,
            selected: corpoBrasileira,
            value: brasileira,
            onChanged: (bool? valor){
              setState(() {
                brasileira = valor;
                if( valor == true ){
                  corpoBrasileira = true;
                }else{
                  corpoBrasileira = false;
                }

              });
            },
          ),
          CheckboxListTile(
            title: const Text("Comida mexicana"),
            subtitle: const Text("apimentada"),
            activeColor: Colors.amber,
            selected: corpoMexicana,
            value: mexicana,
            onChanged: (bool? valor){
              setState(() {
                mexicana = valor;
                if( valor == true ){
                  corpoMexicana = true;
                }else{
                  corpoMexicana = false;
                }
              });
            },
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              const Text("Masculino"),
              Radio(
                  value: "masculino",
                  groupValue: escolhaUsuario,
                  onChanged: (valor){
                    setState(() {
                      escolhaUsuario = valor;
                    });
                  }),
            ],
          ),
          Row(
            children: [
              const Text("Feminino  "),
              Radio(
                  value: "feminino",
                  groupValue: escolhaUsuario,
                  onChanged: (valor){
                    setState(() {
                      escolhaUsuario = valor;
                    });
                  },
              ),
            ],
          ),
          const SizedBox(height: 25),
          RadioListTile(
            title: const Text("Azul"),
            controlAffinity: ListTileControlAffinity.trailing,
            activeColor: Colors.blueAccent,
            selected: corpoCorAzul,
            value: "azul",
            groupValue: escolhaCor,
            onChanged: (valor){
              setState(() {
                escolhaCor = valor;
                if(valor == "azul"){
                  corpoCorAzul = true;
                  corpoCorVermelho = false;
                }
              });
            },
          ),
          RadioListTile(
            title: const Text("Vermelho"),
            controlAffinity: ListTileControlAffinity.trailing,
            activeColor: Colors.red,
            selected: corpoCorVermelho,
            value: "vermelho",
            groupValue: escolhaCor,
            onChanged: (valor){
              setState(() {
                escolhaCor = valor;
                if(valor == "vermelho"){
                  corpoCorVermelho = true;
                  corpoCorAzul = false;
                }
              });
            },
          ),
          const SizedBox(height: 25),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange[300]),
            onPressed: (){
              print("japonesa:   $japonesa\n"
                    "brasileira: $brasileira\n"
                    "mexicana:   $mexicana\n"
                    "sexo: $escolhaUsuario\n"
                    "cor: $escolhaCor");
            },
            child: const Text("Salvar"),
          ),
        ],
      ),
    );
  }
}
