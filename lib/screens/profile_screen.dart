import 'package:flutter/material.dart';
import '../widgets/info_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  void _showContactInfo(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.0)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(24.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24.0)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                ),
              ),
              const Text(
                'Contact Info',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              _buildContactTile(
                icon: Icons.email_outlined,
                title: 'Email',
                subtitle: 'aelbayoumi1@smail.ucas.edu.ps',
                color: Colors.blue,
              ),
              _buildContactTile(
                icon: Icons.code_rounded,
                title: 'GitHub',
                subtitle: 'github.com/3bedSa',
                color: Colors.purple,
              ),
              const SizedBox(height: 12),
            ],
          ),
        );
      },
    );
  }

  Widget _buildContactTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
  }) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Icon(icon, color: color),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: Colors.grey[600], fontSize: 13),
      ),
      trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 14),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFC),
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        actions: [
          IconButton(
            icon: const Icon(Icons.share_outlined),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Profile link copied to clipboard!')),
              );
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Theme.of(context).colorScheme.primary,
                          width: 2.0,
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 60.0,
                        backgroundImage: AssetImage(
                          'assets/images/profile_avatar.png',
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      '3bdSa3ed',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        letterSpacing: -0.5,
                      ),
                    ),
                    const SizedBox(height: 6.0),
                    Text(
                      'Mobile App Developer',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on_outlined, size: 16, color: Colors.grey[500]),
                        const SizedBox(width: 4),
                        Text(
                          'Gaza',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32.0),
              const InfoCard(
                title: 'About Me',
                icon: Icons.person_outline_rounded,
                iconColor: Colors.teal,
                child: Text(
                  'I am a mobile application developer interested in building simple and practical applications using Flutter. I enjoy learning new programming concepts, improving my development skills, and working on projects that help me gain real experience in software development.',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color(0xFF4A4A4A),
                    height: 1.5,
                  ),
                ),
              ),
              InfoCard(
                title: 'Education',
                icon: Icons.school_outlined,
                iconColor: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDetailRow('Institution', 'University College of Applied Sciences (UCAS)'),
                    _buildDetailRow('Major', 'Application Programming'),
                    _buildDetailRow('Platform', 'Flutter / Mobile Development'),
                  ],
                ),
              ),
              InfoCard(
                title: 'Skills & Tech Stack',
                icon: Icons.code_rounded,
                iconColor: Colors.purple,
                child: Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    _buildSkillChip('Flutter'),
                    _buildSkillChip('Dart'),
                    _buildSkillChip('Firebase'),
                    _buildSkillChip('Git & GitHub'),
                    _buildSkillChip('REST APIs'),
                    _buildSkillChip('UI Design'),
                    _buildSkillChip('Problem Solving'),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton.icon(
                onPressed: () => _showContactInfo(context),
                icon: const Icon(Icons.mail_outline_rounded),
                label: const Text(
                  'Contact Me' ,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  elevation: 2,
                  shadowColor: Theme.of(context).colorScheme.primary.withOpacity(0.3),
                ),
              ),
              const SizedBox(height: 24.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100.0,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black54,
                fontSize: 13.0,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black87,
                fontSize: 13.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillChip(String skillName) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: Colors.purple.withOpacity(0.06),
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.purple.withOpacity(0.12),
          width: 1.0,
        ),
      ),
      child: Text(
        skillName,
        style: const TextStyle(
          color: Colors.purple,
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
