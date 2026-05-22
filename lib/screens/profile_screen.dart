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
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF6F8FB),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        theme.colorScheme.primary,
                        theme.colorScheme.primary.withRed(100),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
                Positioned(
                  top: 110,
                  child: Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: const CircleAvatar(
                      radius: 60.0,
                      backgroundImage: AssetImage(
                        'assets/images/profile_avatar.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  const Text(
                    '3bdSa3ed',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      letterSpacing: -0.5,
                    ),
                  ),
                  const SizedBox(height: 6.0),
                  Text(
                    'Mobile App Developer',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildHeaderBadge(
                        icon: Icons.location_on_outlined,
                        label: 'Gaza',
                        color: Colors.grey[700]!,
                      ),
                      const SizedBox(width: 8),
                      _buildHeaderBadge(
                        icon: Icons.work_outline_rounded,
                        label: 'Open to Work',
                        color: Colors.green[700]!,
                        bgColor: Colors.green[50],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const InfoCard(
                    title: 'About Me',
                    icon: Icons.person_outline_rounded,
                    iconColor: Colors.teal,
                    child: Text(
                      'I am a mobile application developer interested in building simple and practical applications using Flutter. I enjoy learning new programming concepts, improving my development skills, and working on projects that help me gain real experience in software development.',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xFF4A4A4A),
                        height: 1.6,
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
                    title: 'Featured Projects',
                    icon: Icons.assignment_outlined,
                    iconColor: Colors.orange,
                    child: Column(
                      children: [
                        _buildProjectItem(
                          title: 'UCAS Portal Client',
                          description: 'A mobile portal app developed in Flutter allowing students to access class details, timetables, and academic grades offline.',
                        ),
                        const Divider(height: 24, thickness: 0.5),
                        _buildProjectItem(
                          title: 'Local Delivery Tracker',
                          description: 'A practical, real-time map tracking delivery application utilizing Firebase Firestore and Map Integration APIs.',
                        ),
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
                  InfoCard(
                    title: 'Certifications',
                    icon: Icons.verified_outlined,
                    iconColor: Colors.redAccent,
                    child: Column(
                      children: [
                        _buildSimpleListRow(
                          icon: Icons.card_membership_outlined,
                          title: 'Flutter Mobile App Development Course',
                          subtitle: 'UCAS Training Center',
                        ),
                        const SizedBox(height: 12),
                        _buildSimpleListRow(
                          icon: Icons.card_membership_outlined,
                          title: 'Version Control with Git & GitHub',
                          subtitle: 'Online Tutorial Academy',
                        ),
                      ],
                    ),
                  ),
                  InfoCard(
                    title: 'Languages',
                    icon: Icons.language_rounded,
                    iconColor: Colors.blueGrey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildLanguageItem('Arabic', 'Native'),
                        _buildLanguageItem('English', 'Professional'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton.icon(
                    onPressed: () => _showContactInfo(context),
                    icon: const Icon(Icons.mail_outline_rounded),
                    label: const Text(
                      'Get in Touch',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.colorScheme.primary,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                  ),
                      elevation: 2,
                      shadowColor: theme.colorScheme.primary.withOpacity(0.3),
                    ),
                  ),
                  const SizedBox(height: 40.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderBadge({
    required IconData icon,
    required String label,
    required Color color,
    Color? bgColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: bgColor ?? Colors.grey[200],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14.0, color: color),
          const SizedBox(width: 4.0),
          Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
        ],
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

  Widget _buildProjectItem({
    required String title,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          description,
          style: TextStyle(
            fontSize: 13.0,
            color: Colors.grey[600],
            height: 1.4,
          ),
        ),
      ],
    );
  }

  Widget _buildSimpleListRow({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 18, color: Colors.grey[600]),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLanguageItem(String language, String level) {
    return Column(
      children: [
        Text(
          language,
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 2.0),
        Text(
          level,
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.grey[600],
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
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
