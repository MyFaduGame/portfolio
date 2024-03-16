//Third Party Imports
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

//Local Imports
import 'package:portfolio/models/project_model.dart';

enum ScreenType { mobile, tab, web }

class AppClass {
  getMqWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  getMqHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  ScreenType getScreenType(BuildContext context) {
    double scrWidth = getMqWidth(context);
    if (scrWidth > 915) {
      return ScreenType.web;
    } else if (scrWidth < 650) {
      return ScreenType.mobile;
    }
    return ScreenType.tab;
  }

  List<WorkModel> projectList = [
    WorkModel(
      projectTitle: "Fantasy Cult",
      projectContent:
          "Fantasy Cult is a cutting-edge platform that brings the thrill of real sports into the virtual world. With a user-friendly interface and exciting features, Fantasy Cult Pro offers users the opportunity to engage in fantasy cult leagues, create their dream teams, and compete against friends and fellow sports enthusiasts.",
      tech1: "FastApi",
      tech2: "AWS Devops",
      tech3: "WebSocket",
    ),
    WorkModel(
      projectTitle: "Apni11",
      projectContent:
          "Apni11 is a cutting-edge platform that brings the thrill of real sports into the virtual world. With a user-friendly interface and exciting features, Apni11 offers users the opportunity to engage in Apni11 leagues, create their dream teams, and compete against friends and fellow sports enthusiasts.",
      tech1: "Flutter",
      tech2: "RazorPay",
      tech3: "FastAPI",
      tech4: "AWS Devops",
    ),
    WorkModel(
      projectTitle: "Stash Out",
      projectContent:
          '''AVM - Automatic Vending Machine is one of Pradeep's stainless steel product. The project is aimed at automating the beverage vending process. It can be done through hardware that controls the main engines and a mobile app (which acts like a PCB display for the unit) that is used to personalize and make beverage. It can also perform several process like Brewing, Boiling,cleansing drum etc . The Engines (hardware) and Mobiel Application communicate using Bluetooth.''',
      tech1: "Project Management",
      tech2: "Python Fastapi",
      tech3: "Postgres",
    ),
    WorkModel(
      projectTitle: "Water Bill Mangement",
      projectContent:
          '''Proficiency in database management systems (e.g., MySQL, PostgreSQL, MongoDB).Strong understanding of database security principles and best practices.Knowledge of backup and recovery procedures and tools''',
      tech1: "MySql",
      tech2: "Data Dog",
      tech3: "Database Management",
      tech4: "PHP",
    ),
    WorkModel(
      projectTitle: "Miraquill",
      projectContent:
          '''As a Backend Developer at Miraquill, you will play a pivotal role in the development and maintenance of our innovative creative writing platform. Miraquill is a mobile-first platform that enables users to share their literary creations, connect with other writers, and engage with short-form content. As part of our backend development team, you will be responsible for designing, implementing, and optimizing the server-side logic and database architecture to ensure seamless performance and scalability of our platform.''',
      tech1: "AWS Full Fledge",
      tech2: "Python",
      tech3: "Datbase Management",
    ),
    WorkModel(
      projectTitle: "VisionX / Ciya",
      projectContent:
          '''As a Backend Developer at Ciya, you will play a crucial role in developing and maintaining the backend infrastructure for our innovative real estate search application. Ciya leverages artificial intelligence (AI) to revolutionize the way users search for houses by providing intelligent recommendations and personalized insights. As part of our dynamic team, you will be responsible for architecting scalable solutions, implementing AI algorithms, and ensuring the reliability and performance of our backend systems.''',
      tech1: "Python Django",
      tech2: "AI Integration",
      tech3: "Postman",
      tech4: "AWS Code Commits",
    ),
  ];
}
