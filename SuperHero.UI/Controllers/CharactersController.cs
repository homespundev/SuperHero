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
    public class CharactersController : Controller
    {
        private SuperHeroDbEntities db = new SuperHeroDbEntities();

        // GET: Characters
        public ActionResult Index()
        {
            return View(db.Characters.ToList());
        }

        // GET: Characters/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Character character = db.Characters.Find(id);
            if (character == null)
            {
                return HttpNotFound();
            }
            return View(character);
        }

        // GET: Characters/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Characters/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "CharacterID,Name,Alias,Description,Occupation,IsHero,IsActive,CharacterImage")] Character character,
            HttpPostedFileBase characterImage)
        {
            if (ModelState.IsValid)
            {
                string imageName = "noimage.png";
                if (characterImage != null)
                {
                    string ext = imageName.Substring(imageName.LastIndexOf('.'));
                    string[] goodExts = { ".jpeg", ".jpg", ".png", ".gif" };
                    if (goodExts.Contains(ext.ToLower()))
                    {
                        imageName = Guid.NewGuid() + ext;
                        characterImage.SaveAs(Server.MapPath("~/Content/Images/Characters/" + imageName));

                    }
                }
                else
                {
                    imageName = "noimage.png";
                }
                character.CharacterImage = imageName;
                db.Characters.Add(character);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(character);
        }

        // GET: Characters/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Character character = db.Characters.Find(id);
            if (character == null)
            {
                return HttpNotFound();
            }
            return View(character);
        }

        // POST: Characters/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "CharacterID,Name,Alias,Description,Occupation,IsHero,IsActive,CharacterImage")] Character character,
            HttpPostedFileBase characterImage)
        {
            if (ModelState.IsValid)
            {
                if (ModelState.IsValid)
                {
                    string imageName = "noimage.png";
                    if (characterImage != null)
                    {
                        string ext = imageName.Substring(imageName.LastIndexOf('.'));
                        string[] goodExts = { ".jpeg", ".jpg", ".png", ".gif" };
                        if (goodExts.Contains(ext.ToLower()))
                        {
                            imageName = Guid.NewGuid() + ext;
                            characterImage.SaveAs(Server.MapPath("~/Content/Images/Characters/" + imageName));
                            character.CharacterImage = imageName;
                        }
                    }

                    db.Entry(character).State = EntityState.Modified;
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
                
            }
            return View(character);
        }

        // GET: Characters/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Character character = db.Characters.Find(id);
            if (character == null)
            {
                return HttpNotFound();
            }
            return View(character);
        }

        // POST: Characters/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Character character = db.Characters.Find(id);
            db.Characters.Remove(character);
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
        public ActionResult Villain()
        {
            var villains = db.Characters.Where(x => x.IsHero == false);
            return View(villains);
        }
    }
}
