import 'package:flutter/material.dart';

void main() {
  runApp(const FacebookCloneApp());
}

class FacebookCloneApp extends StatelessWidget {
  const FacebookCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FacebookHomePage(),
    );
  }
}

class FacebookHomePage extends StatelessWidget {
  const FacebookHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: const Color(0xFF1877F2), // Azul oficial do Facebook
        title: const Text(
          'facebook',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
            letterSpacing: -1.2,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.messenger, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          // Área de Criar Postagem
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    const SizedBox(width: 8.0),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'No que você está pensando?',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(height: 10.0, thickness: 0.5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.videocam, color: Colors.red),
                      label: const Text('Ao vivo', style: TextStyle(color: Colors.black)),
                    ),
                    const VerticalDivider(width: 8.0),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.photo_library, color: Colors.green),
                      label: const Text('Foto', style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 8.0),

          // Exemplo de Postagem 1
          const PostCard(
            userName: 'Error404notafound',
            time: '5 min atrás',
            postText: 'Olha que brabo! Criei esse layout do Facebook usando apenas o meu celular e o robô do GitHub Actions! 🚀🔥',
          ),
          
          // Exemplo de Postagem 2
          const PostCard(
            userName: 'Gemini AI',
            time: '2 horas atrás',
            postText: 'Programar pelo celular é totalmente possível. O projeto está ficando show de bola, chefe!',
          ),
        ],
      ),
    );
  }
}

// Widget customizado para criar os cards de postagem
class PostCard extends StatelessWidget {
  final String userName;
  final String time;
  final String postText;

  const PostCard({
    super.key,
    required this.userName,
    required this.time,
    required this.postText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(userName, style: const TextStyle(fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Text(time, style: TextStyle(color: Colors.grey[600], fontSize: 12.0)),
                          const SizedBox(width: 4.0),
                          Icon(Icons.public, color: Colors.grey[600], size: 12.0),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(icon: const Icon(Icons.more_horiz), onPressed: () {}),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Text(postText),
          ),
          const Divider(height: 10.0, thickness: 0.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.thumb_up_outlined, color: Colors.grey),
                label: const Text('Curtir', style: TextStyle(color: Colors.grey)),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.mode_comment_outlined, color: Colors.grey),
                label: const Text('Comentar', style: TextStyle(color: Colors.grey)),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.share_outlined, color: Colors.grey),
                label: const Text('Compartilhar', style: TextStyle(color: Colors.grey)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
