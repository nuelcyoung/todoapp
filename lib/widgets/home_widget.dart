import 'package:flutter/material.dart';
import 'package:todo/widgets/todo_widget.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final _formKey = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _description = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        //margin: const EdgeInsets.all(20),
        color: const Color(0xffFAF7F0),
        child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  TextFormField(
                      controller: _title,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Title',
                          hintText: 'Title',
                          fillColor: Color(0xffCDFCF6))),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _description,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Description',
                        hintText: 'Description',
                        fillColor: Color(0xffCDFCF6)),
                    maxLines: 4,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Processing Task...')));
                      }
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const TodoWidget(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(150, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff98a8f8)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Add todo",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            )));
  }
}
