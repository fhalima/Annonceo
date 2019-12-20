<?php

namespace App\Controller;

use App\Entity\Annonce;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
/**
 * @Route("/annonce", name="annonce_")
 */
class AnnonceController extends AbstractController
{
    /**
     * @Route("/{id}", name="page")
     */
    public function index(Annonce $annonce)
    {

        return $this->render('annonce_page.html.twig', [
            'annonce' => $annonce,
        ]);
    }
}
