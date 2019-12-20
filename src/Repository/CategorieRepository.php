<?php

namespace App\Repository;

use App\Entity\Categorie;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method Categorie|null find($id, $lockMode = null, $lockVersion = null)
 * @method Categorie|null findOneBy(array $criteria, array $orderBy = null)
 * @method Categorie[]    findAll()
 * @method Categorie[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CategorieRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Categorie::class);
    }

    // /**
    //  * @return Categorie[] Returns an array of Categorie objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('c.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Categorie
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
    public function SelectAllCategories()
    {
        return $this->createQueryBuilder('c')
            ->select(['c.titre'])
            ->groupBy('c.titre')
            ->orderBy('c.titre', 'ASC')
            ->getQuery()
            ->getResult()
            ;
    }

    public function SelectTitles(array $categories)
    {
        $titles = [];
        foreach ($categories as $categorie) {
            $titles[$categorie->getId()] = $categorie->getTitre();
        }
        return $titles;
    }

    public function TopFiveBigestAnnounceNumber()
    {
        $query = $this->getEntityManager()->createQuery(
            'SELECT c.titre, COUNT(a.id_categorie) as coc
        FROM App\Entity\Categorie c
        INNER JOIN APP\Entity\Annonce a
        WHERE c.id = a.id_categorie
        GROUP BY c.id        
        ORDER BY COUNT(a.id_categorie) DESC'
        )->setMaxResults(5)
            ->getResult();

        return $query;

    }
}
