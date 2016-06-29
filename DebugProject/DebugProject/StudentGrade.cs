using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DebugProject
{
    public class StudentGrade
    {
        public string StudentName { get; set; }
        public decimal PointsEarned { get; set; }
        public decimal PointsPossible { get; set; }
        public decimal Average {get;set;}
        public string LetterGrade {get;set;}

        public void CalculateAverage()
        {
            try
            {
                this.Average = (this.PointsEarned / this.PointsPossible) * 100;
            }
            catch
            {
                System.Console.WriteLine("Division by zero is not possible");
            }

        }

        public void DetermineLetterGrade()
        {
            if (this.Average >= 90)
            {
                this.LetterGrade = "A";
            }
            else if (this.Average >= 80)
            {
                this.LetterGrade = "B";
            }
            else if (this.Average >= 70)
            {
                this.LetterGrade = "C";
            }
            else if (this.Average >= 60)
            {
                this.LetterGrade = "D";
            }
            else
            {
                this.LetterGrade = "F";
            }
        }
    }
}
