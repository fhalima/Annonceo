<?php

namespace App\Controller\Admin;

use App\Entity\Annonce;
use App\Entity\Categorie;
use App\Entity\Note;
use App\Entity\User;
use App\Form\AnnonceFormType;
use App\Form\CategorieFormType;
use App\Form\UserProfileFormType;
use App\Form\DashboardUserFormType;
use App\Repository\AnnonceRepository;
use App\Repository\CategorieRepository;
use App\Repository\CommentaireRepository;
use App\Repository\NoteRepository;
use App\Repository\PhotoRepository;
use App\Repository\UserRepository;
use Doctrine\ORM\EntityManagerInterface;
use PhpParser\Node\Stmt\Switch_;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

/**
 * @Route("/admin", name="admin_")
 */
class DashboardController extends AbstractController
{

    private $categorieList;
    private $userList;
    private $commentaireList;
    private $noteList;
    private $photoList;
    private $annonceList;

    public function __construct(CategorieRepository $categorieRepository,
                                AnnonceRepository $annonceRepository,
                                UserRepository $userRepository,
                                CommentaireRepository $commentaireRepository,
                                NoteRepository $noteRepository,
                                PhotoRepository $photoRepository)
    {
        $this->categorieList = $categorieRepository->findAll();
        $this->villeList = $annonceRepository->findAll();
        $this->userList = $userRepository->findAll();
        $this->commentaireList = $commentaireRepository->findAll();
        $this->noteList = $noteRepository->findAll();
        $this->photoList = $photoRepository->findAll();
        $this->annonceList = $annonceRepository->findAll();

    }


    /**
     * @Route("/", name="dashboard")
     */
    public function index()
    {
        return $this->redirectToRoute('admin_user');
    }

    //------------------------------------------- Dashboard User -----------------------------------------------//

    /**
     * @Route("/user", name="user")
     */
    public function UserDashboard(Request $request,
                                  UserRepository $userRepository,
                                  EntityManagerInterface $entityManager,
                                  UserPasswordEncoderInterface $userPasswordEncoder)
    {

        $user_curr = new User();
        $userform = $this->createForm(DashboardUserFormType::class, $user_curr);
        $userform->handleRequest($request);

        if ($userform->isSubmitted() && $userform->isValid()) {
            $user_curr = $userform->getData();

            $password = $userPasswordEncoder->encodePassword($user_curr, $userform['plainPassword']->getData());
            $user_curr->setPassword($password);
            $user_curr->setRole($userform['role']->getData());

            $entityManager->persist($user_curr);
            $entityManager->flush();

            $this->addFlash('success', 'L\'utilisateur' . $user_curr->getPseudo() . ' a bien était ajoutée.');
            return $this->redirectToRoute('admin_user');

        }

        return $this->render('admin/dashboard/user.html.twig', [
            'userList' => $this->userList,
            'user_button' => "Ajouter",
            'user_curr' => $user_curr,
            'user_form' => $userform->createView()

        ]);
    }

    /**
     * @Route("/user/update{id?}", name="user_update")
     */
    public function UserUpdateDashboard(Request $request,
                                        UserRepository $userRepository,
                                        EntityManagerInterface $entityManager)
    {
        $id = $request->get('id');
        $user_curr = $userRepository->findOneBy(["id" => $id]);
        $password = $user_curr->getPassword();
        $userform = $this->createForm(UserProfileFormType::class, $user_curr);
        $userform->handleRequest($request);

        if ($userform->isSubmitted() && $userform->isValid()) {
//            $user_curr->setElements($userform);
            $user_curr = $userform->getData();
            $user_curr->setPassword($password);
            $entityManager->persist($user_curr);
            $entityManager->flush();
            $this->addFlash('success', 'L\'utilisateur numéro ' . $user_curr->getId() . ' a était mis à jour.');
            return $this->redirectToRoute('admin_user');
        }

        return $this->render('admin/dashboard/user.html.twig', [
            'userList' => $this->userList,
            'user_button' => "Mettre à jour",
            'user_curr' => $user_curr,
            'user_form' => $userform->createView()

        ]);
    }

    /**
     * @Route("/user/delete/{id?}", name="user_delete")
     */
    public function UserDeleteDashboard(Request $request,
                                        UserRepository $userRepository,
                                        EntityManagerInterface $entityManager)
    {
        $id = $request->get('id');
        $user_curr = $userRepository->findOneBy(["id" => $id]);

        $userform = $this->createForm(UserProfileFormType::class, $user_curr);
        $userform->handleRequest($request);

        if ($userform->isSubmitted() && $userform->isValid()) {
//            $annonce_curr = $annonceform->getData();
//            dd($user_curr);
            $entityManager->remove($user_curr);
            $entityManager->flush();
            $this->addFlash('success', 'L\'annonce ' . $user_curr->getId() . ' a bien était supprimée.');
            return $this->redirectToRoute('admin_user');
        }

        return $this->render('admin/dashboard/user.html.twig', [
            'userList' => $this->userList,
            'user_button' => "supprimer",
            'user_curr' => $user_curr,
            'user_form' => $userform->createView()

        ]);
    }

    //------------------------------------------- Dashboard Annonce -----------------------------------------------//

    /**
     * @Route("/annonce", name="annonce")
     */
    public function AnnonceDashboard(Request $request,
                                     AnnonceRepository $annonceRepository,
                                     EntityManagerInterface $entityManager)
    {

        $annonce_curr = new Annonce();
        $annonceform = $this->createForm(AnnonceFormType::class, $annonce_curr);
        $annonceform->handleRequest($request);

        if ($annonceform->isSubmitted() && $annonceform->isValid()) {

            $annonce_curr->setElements($annonceform);
            $entityManager->persist($annonce_curr);
            $entityManager->flush();

            $this->addFlash('success', 'L\'annonce ' . $annonce_curr->getTitre() . ' a bien était ajoutée.');
            return $this->redirectToRoute('admin_annonce');

        }

        return $this->render('admin/dashboard/annonce.html.twig', [
            'annonceList' => $this->annonceList,
            'annonce_button' => "Ajouter",
            'annonce_curr' => $annonce_curr,
            'annonce_form' => $annonceform->createView()

        ]);
    }

    /**
     * @Route("/annonce/update{id?}", name="annonce_update")
     */
    public function AnnonceUpdateDashboard(Request $request,
                                           AnnonceRepository $annonceRepository,
                                           EntityManagerInterface $entityManager)
    {
        $id = $request->get('id');
        $annonce_curr = $annonceRepository->findOneBy(["id" => $id]);

        $annonceform = $this->createForm(AnnonceFormType::class, $annonce_curr);
        $annonceform->handleRequest($request);

        if ($annonceform->isSubmitted() && $annonceform->isValid()) {
            $annonce_curr->setElements($annonceform);

            $entityManager->persist($annonce_curr);
            $entityManager->flush();
            $this->addFlash('success', 'L\'annonce numéro ' . $annonce_curr->getId() . ' a était mis à jour.');
            return $this->redirectToRoute('admin_annonce');
        }

        return $this->render('admin/dashboard/annonce.html.twig', [
            'annonceList' => $this->annonceList,
            'annonce_button' => "Mettre à jour",
            'annonce_curr' => $annonce_curr,
            'annonce_form' => $annonceform->createView()

        ]);
    }

    /**
     * @Route("/annonce/delete/{id?}", name="annonce_delete")
     */
    public function AnnonceDeleteDashboard(Request $request,
                                           AnnonceRepository $annonceRepository,
                                           EntityManagerInterface $entityManager)
    {
        $id = $request->get('id');
        $annonce_curr = $annonceRepository->findOneBy(["id" => $id]);

        $annonceform = $this->createForm(AnnonceFormType::class, $annonce_curr);
        $annonceform->handleRequest($request);

        if ($annonceform->isSubmitted() && $annonceform->isValid()) {
//            $annonce_curr = $annonceform->getData();
            $entityManager->remove($annonce_curr);
            $entityManager->flush();
            $this->addFlash('success', 'L\'annonce ' . $annonce_curr->getTitre() . ' a bien était supprimée.');
            return $this->redirectToRoute('admin_annonce');
        }

        return $this->render('admin/dashboard/annonce.html.twig', [
            'annonceList' => $this->annonceList,
            'annonce_button' => "supprimer",
            'annonce_curr' => $annonce_curr,
            'annonce_form' => $annonceform->createView()

        ]);
    }

    //------------------------------------------- Dashboard Categorie -----------------------------------------------//

    /**
     * @Route("/categorie", name="categorie")
     */
    public function CategorieDashboard(Request $request,
                                       CategorieRepository $annonceRepository,
                                       EntityManagerInterface $entityManager)
    {

        $categorie_curr = new Categorie();
        $categorieform = $this->createForm(CategorieFormType::class, $categorie_curr);
        $categorieform->handleRequest($request);

        if ($categorieform->isSubmitted() && $categorieform->isValid()) {

//            $categorie_curr->setElements($categorieform);
            $categorie_curr = $categorieform->getData();
            $entityManager->persist($categorie_curr);
            $entityManager->flush();

            $this->addFlash('success', 'La categorie ' . $categorie_curr->getTitre() . ' a bien était ajoutée.');
            return $this->redirectToRoute('admin_categorie');

        }

        return $this->render('admin/dashboard/categorie.html.twig', [
            'categorieList' => $this->categorieList,
            'categorie_button' => "Ajouter",
            'categorie_curr' => $categorie_curr,
            'categorie_form' => $categorieform->createView()

        ]);
    }

    /**
     * @Route("/categorie/update{id?}", name="categorie_update")
     */
    public function CategorieUpdateDashboard(Request $request,
                                             CategorieRepository $categorieRepository,
                                             EntityManagerInterface $entityManager)
    {
        $id = $request->get('id');
        $categorie_curr = $categorieRepository->findOneBy(["id" => $id]);

        $categorieform = $this->createForm(CategorieFormType::class, $categorie_curr);
        $categorieform->handleRequest($request);

        if ($categorieform->isSubmitted() && $categorieform->isValid()) {
//            $categorie_curr->setElements($categorieform);
            $categorie_curr = $categorieform->getData();

            $entityManager->persist($categorie_curr);
            $entityManager->flush();
            $this->addFlash('success', 'La catégorie numéro ' . $categorie_curr->getId() . ' a était mis à jour.');
            return $this->redirectToRoute('admin_categorie');
        }

        return $this->render('admin/dashboard/categorie.html.twig', [
            'categorieList' => $this->categorieList,
            'categorie_button' => "Mettre à jour",
            'categorie_curr' => $categorie_curr,
            'categorie_form' => $categorieform->createView()

        ]);
    }

    /**
     * @Route("/categorie/delete/{id?}", name="categorie_delete")
     */
    public function CategorieDeleteDashboard(Request $request,
                                             CategorieRepository $categorieRepository,
                                             EntityManagerInterface $entityManager)
    {
        $id = $request->get('id');
        $categorie_curr = $categorieRepository->findOneBy(["id" => $id]);

        $categorieform = $this->createForm(CategorieFormType::class, $categorie_curr);
        $categorieform->handleRequest($request);

        if ($categorieform->isSubmitted() && $categorieform->isValid()) {
//            $categorie_curr = $categorieform->getData();
            $entityManager->remove($categorie_curr);
            $entityManager->flush();
            $this->addFlash('success', 'La catégorie ' . $categorie_curr->getTitre() . ' a bien était supprimée.');
            return $this->redirectToRoute('admin_categorie');
        }

        return $this->render('admin/dashboard/categorie.html.twig', [
            'categorieList' => $this->categorieList,
            'categorie_button' => "supprimer",
            'categorie_curr' => $categorie_curr,
            'categorie_form' => $categorieform->createView(),
            '_fragment' => 'form'

        ]);
    }

    //------------------------------------------- Dashboard Note -----------------------------------------------//

    /**
     * @Route("/note", name="note")
     */
    public
    function NoteDashboard(NoteRepository $noteRepository)
    {
        return $this->render('admin/dashboard/note.html.twig',
            ['noteList' => $this->noteList]);
    }

    /**
     * @Route("/note/delete/{id?}", name="note_delete")
     */
    public function NoteDeleteDashboard(Request $request,
                                        NoteRepository $noteRepository,
                                        EntityManagerInterface $entityManager)
    {
        $id = $request->get('id');
        $note_curr = $noteRepository->findOneBy(["id" => $id]);

        $entityManager->remove($note_curr);
        $entityManager->flush();
        $this->addFlash('success', 'La note ' . $note_curr->getId() . ' a bien était supprimée.');
        return $this->redirectToRoute('admin_note');


        return $this->render('admin/dashboard/note.html.twig', [
            'noteList' => $this->noteList

        ]);
    }

    //------------------------------------------- Dashboard Commentaire -----------------------------------------------//

    /**
     * @Route("/commentaire", name="commentaire")
     */
    public
    function CommentaireDashboard(CommentaireRepository $commentaireRepository)
    {
        return $this->render('admin/dashboard/commentaire.html.twig',
            ['commentaireList' => $this->commentaireList]);
    }


    /**
     * @Route("/commentaire/delete/{id?}", name="commentaire_delete")
     */
    public function CommentaireDeleteDashboard(Request $request,
                                               CommentaireRepository $commentaireRepository,
                                               EntityManagerInterface $entityManager)
    {
        $id = $request->get('id');
        $commentaire_curr = $commentaireRepository->findOneBy(["id" => $id]);

        $entityManager->remove($commentaire_curr);
        $entityManager->flush();
        $this->addFlash('success', 'Le commentaire ' . $commentaire_curr->getId() . ' a bien était supprimée.');
        return $this->redirectToRoute('admin_commentaire');


        return $this->render('admin/dashboard/commentaire.html.twig', [
            'commentaireList' => $this->commentaireList

        ]);
    }

    /**
     * @Route("/statistique", name="statistique")
     */
    public function StatistiqueDashboard(Request $request,
                                               UserRepository $userRepository,
                                               AnnonceRepository $annonceRepository,
                                               CategorieRepository $categorieRepository,
                                               EntityManagerInterface $entityManager)
    {
       $stat1 = $userRepository->TopFiveBestNotedUsers();
        $stat2 = $userRepository->TopFiveBestActifUsers();
        $stat3 = $annonceRepository->TopOldestAnnounce();
        $stat4 = $categorieRepository->TopFiveBigestAnnounceNumber();
//dd($stat1);
        return $this->render('admin/dashboard/statistique.html.twig', [
            'stat1' => $stat1,
            'stat2' => $stat2,
            'stat3' => $stat3,
            'stat4' => $stat4

        ]);
    }
}