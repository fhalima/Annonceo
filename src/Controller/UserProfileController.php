<?php

namespace App\Controller;

use App\Form\SearchFormType;
use App\Form\UserProfileFormType;
use App\Repository\AnnonceRepository;

use App\Repository\CategorieRepository;
use App\Repository\MembreRepository;
use App\Repository\UserRepository;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/user", name="user_")
 */
class UserProfileController extends AbstractController
{
    /**
     * @Route("/profile", name="profile")
     */
    public function index(Request $request,
                          EntityManagerInterface $entityManager,
                          AnnonceRepository $annonceRepository,
                          CategorieRepository $categorieRepository,
                          UserRepository $userRepository)
    {

        $user = $this->getUser();
//passage de l'utilisateur au formulaire pour pré remplirles champs du formulaire
        $profileForm = $this->createForm(UserProfileFormType::class, $user);
        $profileForm->handleRequest($request);
//        $user = $profileForm->getData();

        //vérification de validité
        if ($profileForm->isSubmitted() && $profileForm->isValid()) {
            $user = $profileForm->getData();
            $entityManager->persist($user);

            $entityManager->flush();
            $this->addFlash(
                    'success',
                    'Votre profil a été mis à jour.'
                );

//            }
        }


        return $this->render('user/profile.html.twig', [
            'user' => $user, 'profile_form' => $profileForm->createView()
        ]);

    }
}
