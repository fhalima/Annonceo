<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use App\Entity\Categorie;

class CategorieFixtures extends BaseFixture
{
    public function loadData(ObjectManager $manager)
    {
        // La fonction anonyme sera exécutée 10 fois
        $this->createMany(10, 'categorie', function ($num) {
            // Construction de l'entité categorie
            $cat = (new Categorie())
                ->setTitre($this->faker->realText(10))
                ->setMotscles($this->faker->randomElement([
                    ' ' . $this->faker->realText(10),
                    ' ' . $this->faker->domainWord,
                    ' ' . $this->faker->lastName,
                    ''
            ]));
            // Toujours retourner l'entité
            return $cat;
        });
        // Pour terminer, enregistrer
        $manager->flush();

    }
}
