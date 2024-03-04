import 'package:flutter/material.dart';
import 'package:untitled3/allproduct.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Todo App",
      home: HomeScreen(),
    );
  }
}

ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    minimumSize: const Size(
      double.infinity,
      50,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)));

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: CircleAvatar(
                    radius: 90,
                    child: Image.network(
                        "https://cdn6.aptoide.com/imgs/4/4/c/44c54b140f8acb539ea5fc4588333625_icon.png"),
                    //"images/ee.jpg"
                  )),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                child: Column(
                  children: [
                    Column(
                      children: [
                        TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                hintText: "Gamil",
                                label: const Text("gmail"))),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              prefixIcon:
                                  const Icon(Icons.remove_red_eye_outlined),
                              hintText: "Password",
                              label: const Text("Password")),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => allproduct(),
                                ));
                          },
                          child: Text("Log In"),
                          style: buttonStyle,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Forgot1Screen(),
                                  ));
                            },
                            child: const Text(
                              "Forget Password?",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            )),
                        SizedBox(
                          height: 100,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AcccountSettings(),
                                ));
                          },
                          child: Text(
                            "Create New Account",
                          ),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(double.infinity, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AcccountSettings extends StatefulWidget {
  const AcccountSettings({super.key});

  @override
  State<AcccountSettings> createState() => _AcccountSettingsState();
}

class _AcccountSettingsState extends State<AcccountSettings> {
  final TextEditingController _Username = TextEditingController();
  final TextEditingController _gmail = TextEditingController();
  final TextEditingController _phonenumber = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confrimPassword = TextEditingController();
  final GlobalKey<FormState> _fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _fromkey,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 200,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sing Up",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Create your account",
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: _Username,
                  decoration: InputDecoration(
                      fillColor: Colors.pinkAccent,
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      filled: true,
                      hintText: "UserName",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _gmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      fillColor: Colors.pinkAccent,
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      filled: true,
                      hintText: "Gmail",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _phonenumber,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      fillColor: Colors.pinkAccent,
                      prefixIcon: const Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      filled: true,
                      labelText: "Number",
                      hintText: "Phone number",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _password,
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Colors.pinkAccent,
                      filled: true,
                      labelText: "password",
                      prefixIcon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
                      ),
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _confrimPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Colors.pinkAccent,
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
                      ),
                      hintText: "Confrim Password",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Sing Up"),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.black,
                      minimumSize: Size(double.infinity, 50)),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Have Account?",
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Sing in"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _Username.dispose();
    _gmail.dispose();
    _phonenumber.dispose();
    _password.dispose();
    _confrimPassword.dispose();
    super.dispose();
  }
}

class Forgot1Screen extends StatefulWidget {
  const Forgot1Screen({super.key});

  @override
  State<Forgot1Screen> createState() => _Forgot1ScreenState();
}

class _Forgot1ScreenState extends State<Forgot1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
            ),
            Text(
              "Your Email Address",
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              " A 6 digit verification code will sent you email Address",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Gmail",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => forgot2Screen(),
                    ));
              },
              child: Text("Next"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Have Account?",
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Sing in"))
              ],
            )
          ],
        )),
      ),
    );
  }
}

class forgot2Screen extends StatefulWidget {
  const forgot2Screen({super.key});

  @override
  State<forgot2Screen> createState() => _forgot2ScreenState();
}

class _forgot2ScreenState extends State<forgot2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
            ),
            Text(
              "Your Email Address",
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              " A 6 digit verification code will sent you email Address",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: () {

              },
              child: Text("Next"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Have Account?",
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Sing in"))
              ],
            )
          ],
        )),);
  }
}
