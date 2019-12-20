<?php

namespace App\DataFixtures;


use App\Entity\Membre;
use App\Entity\User;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class UserFixtures extends BaseFixture
{
    private $encoder;

    public function __construct(UserPasswordEncoderInterface $encoder)
    {
        $this->encoder = $encoder;
    }

    public function loadData(ObjectManager $manager)
    {
        // La fonction anonyme sera exécutée 50 fois
        $this->createMany(10, 'user_user', function ($num) {
            // Construction de l'entité categorie
            $member = new User();
            $member->setPseudo(sprintf('user%d', $num))
                ->setRoles(['ROLE_USER'])
                ->setNom($this->faker->firstName)
                ->setPrenom($this->faker->lastName)
                ->setTelephone($this->faker->phoneNumber)
                ->setEmail($this->faker->email)
                ->setCivilite($this->faker->randomElement(['f', 'm']))
//                ->setStatut($this->faker->randomElement(['0', '1']))
                ->setDateEnregistrement($this->faker->dateTimeBetween('-1 year'))
                ->setPassword($this->encoder->encodePassword($member, 'user' . $num));

            return $member;
        });

            $this->createMany(2, 'user_admin', function ($num) {
                // Construction de l'entité categorie
                $member = new User();
                $member->setPseudo(sprintf('admin%d', $num))
                    ->setRoles(['ROLE_ADMIN'])
                    ->setNom($this->faker->firstName)
                    ->setPrenom($this->faker->lastName)
                    ->setTelephone($this->faker->phoneNumber)
                    ->setEmail($this->faker->email)
                    ->setCivilite($this->faker->randomElement(['f', 'm']))
//                    ->setStatut($this->faker->randomElement(['0', '1']))
                    ->setDateEnregistrement($this->faker->dateTimeBetween('-1 year'))
                    ->setPassword($this->encoder->encodePassword($member, 'admin' . $num));

                // Toujours retourner l'entité
                return $member;
            });
            // Pour terminer, enregistrer
            $manager->flush();

        }
}
