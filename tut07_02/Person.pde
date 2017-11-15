public class Person
{
  private String firstName;
  private String lastName;
  private int age;

  public Person(String firstName, String lastName, int age)
  {
    this.firstName = firstName;
    this.lastName = lastName;
    this.age = age;
  }
  public boolean equals(Person person)
  {
     return person.firstName.equals(this.firstName) &&  person.lastName.equals(this.lastName) && person.age==this.age;
  }

}