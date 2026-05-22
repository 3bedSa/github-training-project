import 'package:flutter/material.dart';
import '../widgets/info_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Color(0xFF1E293B),
            letterSpacing: -0.5,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: const Color(0xFF1E293B),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFE2E8F0),
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 54.0,
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
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF1E293B),
                        letterSpacing: -0.6,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      'Mobile App Developer',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                        color: theme.colorScheme.primary,
                        letterSpacing: 0.1,
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildHeaderBadge(
                          icon: Icons.location_on_outlined,
                          label: 'Gaza',
                          color: const Color(0xFF64748B),
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
              InfoCard(
                title: 'Professional Summary',
                icon: Icons.person_outline_rounded,
                iconColor: Colors.teal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'I am a mobile application developer interested in building simple and practical applications using Flutter. I enjoy learning new programming concepts, improving my development skills, and working on projects that help me gain real experience in software development.',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xFF475569),
                        height: 1.6,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Divider(height: 1, thickness: 0.5, color: Color(0xFFE2E8F0)),
                    ),
                    _buildSectionSubheading(Icons.school_outlined, 'Education'),
                    const SizedBox(height: 12),
                    _buildDetailRow('Institution', 'University College of Applied Sciences (UCAS)'),
                    _buildDetailRow('Major', 'Application Programming'),
                    _buildDetailRow('Platform', 'Flutter / Mobile Development'),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Divider(height: 1, thickness: 0.5, color: Color(0xFFE2E8F0)),
                    ),
                    _buildSectionSubheading(Icons.language_rounded, 'Languages'),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        _buildLanguageBadge('Arabic', 'Native'),
                        const SizedBox(width: 8),
                        _buildLanguageBadge('English', 'Professional'),
                      ],
                    ),
                  ],
                ),
              ),
              InfoCard(
                title: 'Technical Portfolio',
                icon: Icons.code_rounded,
                iconColor: Colors.purple,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionSubheading(Icons.bolt_outlined, 'Skills & Tech Stack'),
                    const SizedBox(height: 12),
                    Wrap(
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
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Divider(height: 1, thickness: 0.5, color: Color(0xFFE2E8F0)),
                    ),
                    _buildSectionSubheading(Icons.assignment_outlined, 'Featured Projects'),
                    const SizedBox(height: 12),
                    _buildProjectItem(
                      title: 'UCAS Portal Client',
                      description: 'A mobile portal app developed in Flutter allowing students to access class details, timetables, and academic grades offline.',
                    ),
                    const Divider(height: 24, thickness: 0.5, color: Color(0xFFF1F5F9)),
                    _buildProjectItem(
                      title: 'Local Delivery Tracker',
                      description: 'A practical, real-time map tracking delivery application utilizing Firebase Firestore and Map Integration APIs.',
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Divider(height: 1, thickness: 0.5, color: Color(0xFFE2E8F0)),
                    ),
                    _buildSectionSubheading(Icons.verified_outlined, 'Certifications'),
                    const SizedBox(height: 12),
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
              const SizedBox(height: 24.0),
            ],
          ),
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

  Widget _buildSectionSubheading(IconData icon, String title) {
    return Row(
      children: [
        Icon(icon, size: 16, color: const Color(0xFF475569)),
        const SizedBox(width: 6),
        Text(
          title,
          style: const TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w800,
            color: Color(0xFF475569),
            letterSpacing: 0.5,
          ),
        ),
      ],
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
            fontSize: 14.0,
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
                  fontSize: 13.0,
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

  Widget _buildLanguageBadge(String language, String level) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F5F9),
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            language,
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1E293B),
            ),
          ),
          const SizedBox(width: 4.0),
          Text(
            '($level)',
            style: const TextStyle(
              fontSize: 11.0,
              fontWeight: FontWeight.w600,
              color: Color(0xFF64748B),
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
