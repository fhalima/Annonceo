<?php

namespace App\Repository;

use App\Entity\Annonce;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method Annonce|null find($id, $lockMode = null, $lockVersion = null)
 * @method Annonce|null findOneBy(array $criteria, array $orderBy = null)
 * @method Annonce[]    findAll()
 * @method Annonce[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AnnonceRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Annonce::class);
    }

    // /**
    //  * @return Annonce[] Returns an array of Annonce objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('a.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Annonce
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
    public function SelectVilles(array $annonces)
    {
        $villes = [];
        foreach ($annonces as $annonce) {
            $villes[$annonce->getId()] = $annonce->getVille();
        }
        return $villes;
    }

    public function searchSelection($categorie, $region, $membre, $prix)
    {
        $query = $this->getEntityManager()->createQuery(
            'SELECT a
        FROM App\Entity\Annonce a
        INNER JOIN App\Entity\Categorie c
        INNER JOIN App\Entity\User u
        WHERE c.titre = :cat
        AND u.pseudo = :us
        AND a.prix < :pr
        AND  a.ville = :reg
        ORDER BY a.id ASC '
        )->setParameter("cat", $categorie)
            ->setParameter("us", $membre)
            ->setParameter("pr", $prix)
            ->setParameter("reg", $region)
            ->getResult();

        return $query;
    }

    public function TopOldestAnnounce()
    {
        $query = $this->getEntityManager()->createQuery(
            'SELECT a . date_enregistrement as date, a . titre
        FROM App\Entity\Annonce a
        ORDER BY a . date_enregistrement asc '
        )->setMaxResults(5)
            ->getResult();

        return $query;

    }


}
