<?php

namespace App\Form;

use App\Entity\Categorie;
use App\Repository\AnnonceRepository;
use App\Repository\CategorieRepository;
use App\Repository\MembreRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\RangeType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\FormInterface;
use Symfony\Component\Form\FormView;
use Symfony\Component\OptionsResolver\OptionsResolver;

class SearchFormType extends AbstractType
{

    private $entityManager;

    public function __construct(EntityManagerInterface $entityManager)
    {
        $this->entityManager = $entityManager;
    }

    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
//$categorieList =$options['categories'];


        $builder->add('categorie', ChoiceType::class, [
            'choices' => $options['categorieList'],
            "choice_label" => function ($cats, $ind, $val) {
                return ucfirst($cats);
            },
        ])
            ->add('region', ChoiceType::class, [
                'choices' => $options['villeList'],
                "choice_label" => function ($vil, $ind, $val) {
                    return ucfirst($vil);
                },
            ])
            ->add('membre', ChoiceType::class, [
                'choices' => $options['membreList'],
                "choice_label" => function ($mem, $ind, $val) {
                    return ucfirst($mem);
                }
            ])
            ->add('prix', RangeType::class, [
                'attr' => [
                    'min' => 5,
                    'max' => 1000
                ]
            ]);
    }

//    public function getChoices(CategorieRepository $categorieRepository,
//                               AnnonceRepository $annonceRepository,
//                               MembreRepository $membreRepository)
//    {
//        $categorieList = $categorieRepository->SelectAllCategories();
//        $villeList = $annonceRepository->SelectAllVilles();
//        $membreList = $membreRepository->SelectAllMembrePseudo();
//
//        return [$categorieList, $villeList, $membreList];
//
//    }
    /**
     * {@inheritdoc}
     */
//    public function buildView(FormView $view, FormInterface $form, array $options)
//    {
//        $view->vars['categories'] = $this->entityManager->createQueryBuilder()
//            ->select(['c.titre'])
//            ->from(Categorie::class, 'c')
//            ->groupBy('c.titre')
//            ->orderBy('c.titre', 'ASC')
//            ->getQuery()
//            ->getResult();
////        dd($view->vars['categories']);
//    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([

        ]);
            // Configure your form options here
            $resolver->setRequired('categorieList');
            $resolver->setRequired('villeList');
            $resolver->setRequired('membreList');

    }
}
