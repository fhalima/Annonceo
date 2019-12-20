<?php

namespace App\DataFixtures;

use App\Entity\Annonce;
use App\Entity\Commentaire;
use App\Entity\Photo;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Persistence\ObjectManager;
use App\Entity\Categorie;

class CommentaireFixtures extends BaseFixture implements DependentFixtureInterface
{
    public function loadData(ObjectManager $manager)
    {
        // La fonction anonyme sera exécutée 100 fois
        $this->createMany(100, 'commentaire', function ($num) {
            // Construction de l'entité categorie
            $commentaire = (new Commentaire())
                ->setCommentaire($this->faker->text)
                ->setIdUser($this->getRandomReference('user_user'))
                ->setIdAnnonce($this->getRandomReference('annonce'))
                ->setDateEnregistrement($this->faker->dateTimeBetween('-1 year'))
                ;

            // Toujours retourner l'entité
            return $commentaire;
        });
        // Pour terminer, enregistrer
        $manager->flush();

    }
    /**
     * @inheritDoc
     */
    public function getDependencies()
    {
        return [
            UserFixtures::class,
            AnnonceFixtures::class,
        ];
    }
}
