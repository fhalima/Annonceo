<?php

namespace App\DataFixtures;

use App\Entity\Annonce;
use App\Entity\User;
use App\Entity\Photo;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Persistence\ObjectManager;
use App\Entity\Categorie;

class AnnonceFixtures extends BaseFixture implements DependentFixtureInterface
{
    public function loadData(ObjectManager $manager)
    {
        // La fonction anonyme sera exécutée 10 fois
        $this->createMany(50, 'annonce', function ($num) {
            // Construction de l'entité categorie
            $annonce = (new Annonce())
                ->setTitre($this->faker->text(20))
                ->setDescriptionCourte($this->faker->realText(200))
                ->setDescriptionLongue($this->faker->text)
                ->setPrix($this->faker->randomFloat(5, 1, 1000))
                ->setPhoto($this->faker->imageUrl(600, 600))
                ->setPays($this->faker->country)
                ->setVille($this->faker->country)
                ->setAdresse($this->faker->address)
                ->setCp($this->faker->numberBetween(1, 5))
                ->setIdUser($this->getRandomReference('user_user'))
//                ->setIdPhoto($this->getRandomReference('photo'))
                ->setDateEnregistrement($this->faker->dateTimeBetween('-1 year'))
                ->setIdCategorie($this->getRandomReference('categorie'));
//                ->setCommentaire($this->getRandomReference('commentaire'));

            $photo = (new Photo())
                ->setPhoto1($this->faker->imageUrl(600, 600))
                ->setPhoto2($this->faker->imageUrl(600, 600))
                ->setPhoto3($this->faker->imageUrl(600, 600))
            ;


            if ($this->faker->boolean(75)) {
                $photo->setPhoto4($this->faker->imageUrl(200, 200));
                if ($this->faker->boolean(75)) {
                    $photo->setPhoto5($this->faker->imageUrl(200, 200));
                }
            }
            $annonce->setIdPhoto($photo);

            // Toujours retourner l'entité
            return $annonce;
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
            CategorieFixtures::class,


        ];
    }
}
