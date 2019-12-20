<?php

namespace App\Controller;

use App\Form\SearchFormType;
use App\Repository\AnnonceRepository;

use App\Repository\CategorieRepository;
use App\Repository\MembreRepository;
use App\Repository\UserRepository;
use Doctrine\ORM\EntityManager;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{

    /**
     * @Route("/", name="home")
     */
    public function index(Request $request,
                          AnnonceRepository $annonceRepository,
                          CategorieRepository $categorieRepository,
                          UserRepository $userRepository)
    {

        $categorieList = $categorieRepository->SelectTitles($categorieRepository->findAll());
        $villeList = $annonceRepository->SelectVilles($annonceRepository->findAll());
        $membreList = $userRepository->SelectPseudos($userRepository->findAll());//

        $form = $this->createForm(SearchFormType::class,
            null, ['categorieList' => $categorieList,
                'villeList' => $categorieList,
                'membreList' => $categorieList]);

        //traitement de la requete par le formulakire
        $form->handleRequest($request);
        //si le formulaire est envoyé et valide
//               dd($categorieList);

        if ($form->isSubmitted() && $form->isValid()) {
            $categorie = $form['categorie']->getData();
            $region = $form['region']->getData();
            $membre = $form['membre']->getData();
            $prix = $form['prix']->getData();

            $list = $annonceRepository->searchSelection($categorie, $region, $membre, $prix);
//            $title = sprintf("Résultat de recherche pour %s", $list);
        } else {
            $list = $annonceRepository->findAll();
            $title = 'Annonces';
        } $title = 'Annonces';
//dd($list);
        return $this->render('index.html.twig', [
            'annonce_list' => $list,
            'title' => $title,
            'search_form' => $form->createView(),
            'categorie_list' => $categorieList,
            'ville_list' => $villeList,
            'membre_list' => $membreList,

        ]);
    }
}
