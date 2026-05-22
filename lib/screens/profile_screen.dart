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
                  color: Color(0xFF1E293B),
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
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: Color(0xFF1E293B),
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          color: Color(0xFF64748B),
          fontSize: 13,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 14, color: Color(0xFF64748B)),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            letterSpacing: -0.5,
          ),
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
                  height: 190,
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
                  top: 120,
                  child: Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 12,
                          offset: Offset(0, 6),
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
            const SizedBox(height: 65.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  const Text(
                    '3bdSa3ed',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF1E293B),
                      letterSpacing: -0.8,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    'Mobile App Developer',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                      color: theme.colorScheme.primary,
                      letterSpacing: 0.2,
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildHeaderBadge(
                        icon: Icons.location_on_outlined,
                        label: 'Gaza',
                        color: const Color(0xFF475569),
                        bgColor: const Color(0xFFF1F5F9),
                      ),
                      const SizedBox(width: 8),
                      _buildHeaderBadge(
                        icon: Icons.work_outline_rounded,
                        label: 'Open to Work',
                        color: const Color(0xFF16A34A),
                        bgColor: const Color(0xFFDCFCE7),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28.0),
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
                        color: Color(0xFF475569),
                        height: 1.6,
                        fontWeight: FontWeight.w400,
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
                        const Divider(height: 24, thickness: 0.5, color: Color(0xFFE2E8F0)),
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
                  InfoCard(
                    title: 'Contact Details',
                    icon: Icons.contact_mail_outlined,
                    iconColor: Colors.indigo,
                    child: Column(
                      children: [
                        _buildContactRow(
                          icon: Icons.email_outlined,
                          label: 'Email Address',
                          value: 'aelbayoumi1@smail.ucas.edu.ps',
                          color: Colors.blue,
                        ),
                        const Divider(height: 24, thickness: 0.5, color: Color(0xFFE2E8F0)),
                        _buildContactRow(
                          icon: Icons.code_rounded,
                          label: 'GitHub Profile',
                          value: 'github.com/3bedSa',
                          color: Colors.purple,
                        ),
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
        color: bgColor ?? const Color(0xFFF1F5F9),
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
              fontWeight: FontWeight.w700,
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
                color: Color(0xFF64748B),
                fontSize: 13.0,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xFF1E293B),
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
            color: Color(0xFF1E293B),
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          description,
          style: const TextStyle(
            fontSize: 13.0,
            color: Color(0xFF475569),
            height: 1.5,
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
        Icon(icon, size: 18, color: const Color(0xFF64748B)),
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
                  color: Color(0xFF1E293B),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Color(0xFF64748B),
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
            color: Color(0xFF1E293B),
          ),
        ),
        const SizedBox(height: 2.0),
        Text(
          level,
          style: const TextStyle(
            fontSize: 12.0,
            color: Color(0xFF64748B),
            fontWeight: FontWeight.w600,
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

  Widget _buildContactRow({
    required IconData icon,
    required String label,
    required String value,
    required Color color,
  }) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: color.withOpacity(0.08),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Icon(icon, color: color, size: 18),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xFF64748B),
              ),
            ),
            const SizedBox(height: 2),
            Text(
              value,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1E293B),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
