<?php

namespace App\DataFixtures;

use App\Entity\Annonce;
use App\Entity\Note;
use App\Entity\Photo;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Persistence\ObjectManager;
use App\Entity\Categorie;

class  NoteFixtures extends BaseFixture implements DependentFixtureInterface
{
    public function loadData(ObjectManager $manager)
    {
        // La fonction anonyme sera exécutée 100 fois
        $this->createMany(100, 'note', function ($num) {
            // Construction de l'entité categorie
            $note = (new Note())
                ->setNote($this->faker->numberBetween(0,10))
                ->setAvis($this->faker->text)
                ->setDateEnregistrement($this->faker->dateTimeBetween('-1 year'))
                ->setIdUser1($this->getRandomReference('user_user'))
                ->setIdUser2($this->getRandomReference('user_user'))
                ;

            // Toujours retourner l'entité
            return $note;
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
        ];
    }
}
