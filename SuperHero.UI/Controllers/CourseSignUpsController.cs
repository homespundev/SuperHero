using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using SuperHero.DATA;

namespace SuperHero.UI.Controllers
{
    public class CourseSignUpsController : Controller
    {
        private SuperHeroDbEntities db = new SuperHeroDbEntities();

        // GET: CourseSignUps
        public ActionResult Index()
        {
            var courseSignUps = db.CourseSignUps.Include(c => c.Cours);
            return View(courseSignUps.ToList());
        }

        // GET: CourseSignUps/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CourseSignUp courseSignUp = db.CourseSignUps.Find(id);
            if (courseSignUp == null)
            {
                return HttpNotFound();
            }
            return View(courseSignUp);
        }

        // GET: CourseSignUps/Create
        public ActionResult SignUp()
        {
            ViewBag.CourseID = new SelectList(db.Courses, "CourseID", "Name");
            return View();
        }

        // POST: CourseSignUps/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SignUp([Bind(Include = "CourseSignUpID,FirstName,LastName,Email,Phone,CourseID")] CourseSignUp courseSignUp)
        {
            if (ModelState.IsValid)
            {
                db.CourseSignUps.Add(courseSignUp);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CourseID = new SelectList(db.Courses, "CourseID", "Name", courseSignUp.CourseID);
            if (User.IsInRole("Citizen") || User.IsInRole("Hero"))
            {
                var userCourses = db.CourseSignUps.Where(x => x.Email == );
                return View(courseSignUp);
            }
            else
            {


                return View(courseSignUp);
            }
        }

        // GET: CourseSignUps/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CourseSignUp courseSignUp = db.CourseSignUps.Find(id);
            if (courseSignUp == null)
            {
                return HttpNotFound();
            }
            ViewBag.CourseID = new SelectList(db.Courses, "CourseID", "Name", courseSignUp.CourseID);
            return View(courseSignUp);
        }

        // POST: CourseSignUps/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "CourseSignUpID,FirstName,LastName,Email,Phone,CourseID")] CourseSignUp courseSignUp)
        {
            if (ModelState.IsValid)
            {
                db.Entry(courseSignUp).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CourseID = new SelectList(db.Courses, "CourseID", "Name", courseSignUp.CourseID);
            return View(courseSignUp);
        }

        // GET: CourseSignUps/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CourseSignUp courseSignUp = db.CourseSignUps.Find(id);
            if (courseSignUp == null)
            {
                return HttpNotFound();
            }
            return View(courseSignUp);
        }

        // POST: CourseSignUps/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CourseSignUp courseSignUp = db.CourseSignUps.Find(id);
            db.CourseSignUps.Remove(courseSignUp);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
