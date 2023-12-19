import 'package:flutter/material.dart';

class JobPostingPage extends StatefulWidget {
  @override
  _JobPostingPageState createState() => _JobPostingPageState();
}

class _JobPostingPageState extends State<JobPostingPage> {
  final TextEditingController _jobTitleController = TextEditingController();
  final TextEditingController _jobDescriptionController =
      TextEditingController();
  final TextEditingController _jobRequirementsController =
      TextEditingController();
  final TextEditingController _jobLocationController = TextEditingController();

  // You can add more fields as needed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post a Job'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/your_image.png',
              height: 150, // Adjust the height as needed
              width: 150, // Adjust the width as needed
              fit: BoxFit.contain,
            ),
            TextField(
              controller: _jobTitleController,
              decoration: InputDecoration(labelText: 'Job Title'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _jobDescriptionController,
              decoration: InputDecoration(labelText: 'Job Description'),
              maxLines: 5,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _jobRequirementsController,
              decoration: InputDecoration(labelText: 'Job Requirements'),
              maxLines: 5,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _jobLocationController,
              decoration: InputDecoration(labelText: 'Job Location'),
            ),
            // Add more fields as needed

            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Perform action when the "Post Job" button is pressed
                _postJob();
              },
              child: Text('Post Job'),
            ),
          ],
        ),
      ),
    );
  }

  void _postJob() {
    // Implement the logic to post the job to your database (Firebase, for example)
    // Retrieve data from controllers: _jobTitleController.text, _jobDescriptionController.text, etc.

    // For simplicity, let's print the job details for now
    print('Job Title: ${_jobTitleController.text}');
    print('Job Description: ${_jobDescriptionController.text}');
    print('Job Requirements: ${_jobRequirementsController.text}');
    print('Job Location: ${_jobLocationController.text}');

    // Add your logic to save the job details to your database
    // You might want to use Firebase Firestore or another database solution.
  }
}

void main() {
  runApp(MaterialApp(
    home: JobPostingPage(),
  ));
}
