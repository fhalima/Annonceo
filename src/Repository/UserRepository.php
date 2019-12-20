<?php

namespace App\Repository;

use App\Entity\User;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;
use Doctrine\ORM\EntityManager;

/**
 * @method User|null find($id, $lockMode = null, $lockVersion = null)
 * @method User|null findOneBy(array $criteria, array $orderBy = null)
 * @method User[]    findAll()
 * @method User[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class UserRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, User::class);
    }

    // /**
    //  * @return User[] Returns an array of User objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('u')
            ->andWhere('u.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('u.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?User
    {
        return $this->createQueryBuilder('u')
            ->andWhere('u.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */

    public function SelectAllUserPseudo()
    {
        return $this->createQueryBuilder('m')
            ->select(['m.pseudo'])
            ->groupBy('m.pseudo')
            ->orderBy('m.pseudo', 'ASC')
            ->getQuery()
            ->getResult();
    }

    public function SelectPseudos(array $users)
    {
        $pseudos = [];
        foreach ($users as $membre) {
            $pseudos[$membre->getId()] = $membre->getPseudo();
        }
        return $pseudos;
    }

    public function TopFiveBestNotedUsers()
    {
        $query = $this->getEntityManager()->createQuery(
            'SELECT u.nom, u.prenom, AVG(n.note) as av
        FROM App\Entity\User u
        INNER JOIN APP\Entity\Note n
        WHERE u.id = n.id_user2
        GROUP BY u.id        
        ORDER BY AVG(n.note) DESC'
        )->setMaxResults(5)
            ->getResult();

        return $query;
    }

    public function TopFiveBestActifUsers()
    {
        $query = $this->getEntityManager()->createQuery(
            'SELECT u.nom, u.prenom, COUNT(n.id_user1) as co
        FROM App\Entity\User u
        INNER JOIN APP\Entity\Note n
        WHERE u.id = n.id_user1
        GROUP BY u.id        
        ORDER BY COUNT(n.id_user1) DESC'
        )->setMaxResults(5)
            ->getResult();

        return $query;

    }

}
