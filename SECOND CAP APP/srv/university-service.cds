using {
    edu.university.Departments as DBDepartments,
    edu.university.Professors as DBProfessors,
    edu.university.Courses as DBCourses,
    edu.university.Students as DBStudents,
    edu.university.Enrollments as DBEnrollments,
    edu.university.Exams as DBExams
} from '../db/schema';

service UniversityService @(path:'/university') {

    entity Departments as projection on DBDepartments;
    entity Professors as projection on DBProfessors;
    entity Courses as projection on DBCourses;
    entity Students as projection on DBStudents;
    entity Enrollments as projection on DBEnrollments;
    entity Exams as projection on DBExams;
}