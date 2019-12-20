<?php

namespace App\Entity;

use App\Form\AnnonceFormType;
use App\Repository\CategorieRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Form\Form;

/**
 * @ORM\Entity(repositoryClass="App\Repository\AnnonceRepository")
 * @ORM\HasLifecycleCallbacks()
 */
class Annonce
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $titre;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $description_courte;

    /**
     * @ORM\Column(type="text")
     */
    private $description_longue;

    /**
     * @ORM\Column(type="float")
     */
    private $prix;

    /**
     * @ORM\Column(type="string", length=200)
     */
    private $photo;

    /**
     * @ORM\Column(type="string", length=60)
     */
    private $pays;

    /**
     * @ORM\Column(type="string", length=60)
     */
    private $ville;

    /**
     * @ORM\Column(type="string", length=200)
     */
    private $adresse;

    /**
     * @ORM\Column(type="integer")
     */
    private $cp;

    /**
     * @ORM\Column(type="datetime")
     */
    private $date_enregistrement;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Commentaire", mappedBy="id_annonce",  orphanRemoval=true)
     * @ORM\JoinColumn(nullable=true)
     */
    private $commentaires;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\User", inversedBy="annonces")
     * @ORM\JoinColumn(nullable=false)
     */
    private $id_user;

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\Photo", inversedBy="annonce", cascade={"persist", "remove"})
     */
    private $id_photo;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Categorie", inversedBy="annonces")
     * @ORM\JoinColumn(nullable=false)
     */
    private $id_categorie;

    public function __construct()
    {

        $this->commentaire = new ArrayCollection();
    }

    /**
     * @ORM\PrePersist()
     *
     */
    public function prePersist()
    {
        //Définir la date de création par défaut
        if ($this->date_enregistrement === null) {
            $this->date_enregistrement = new \DateTime();
        }
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function setId(int $id)
    {
        $this->id = $id;
    }

    public function getTitre(): ?string
    {
        return $this->titre;
    }

    public function setTitre(string $titre): self
    {
        $this->titre = $titre;

        return $this;
    }

    public function getDescriptionCourte(): ?string
    {
        return $this->description_courte;
    }

    public function setDescriptionCourte(string $description_courte): self
    {
        $this->description_courte = $description_courte;

        return $this;
    }

    public function getDescriptionLongue(): ?string
    {
        return $this->description_longue;
    }

    public function setDescriptionLongue(string $description_longue): self
    {
        $this->description_longue = $description_longue;

        return $this;
    }

    public function getPrix(): ?float
    {
        return $this->prix;
    }

    public function setPrix(float $prix): self
    {
        $this->prix = $prix;

        return $this;
    }

    public function getPhoto(): ?string
    {
        return $this->photo;
    }

    public function setPhoto(string $photo): self
    {
        $this->photo = $photo;

        return $this;
    }

    public function getPays(): ?string
    {
        return $this->pays;
    }

    public function setPays(string $pays): self
    {
        $this->pays = $pays;

        return $this;
    }

    public function getVille(): ?string
    {
        return $this->ville;
    }

    public function setVille(string $ville): self
    {
        $this->ville = $ville;

        return $this;
    }

    public function getAdresse(): ?string
    {
        return $this->adresse;
    }

    public function setAdresse(string $adresse): self
    {
        $this->adresse = $adresse;

        return $this;
    }

    public function getCp(): ?int
    {
        return $this->cp;
    }

    public function setCp(int $cp): self
    {
        $this->cp = $cp;

        return $this;
    }

    public function getDateEnregistrement(): ?\DateTimeInterface
    {
        return $this->date_enregistrement;
    }

    public function setDateEnregistrement(\DateTimeInterface $date_enregistrement): self
    {
        $this->date_enregistrement = $date_enregistrement;

        return $this;
    }


    /**
     * @return Collection|Commentaire[]
     */
    public function getCommentaires(): Collection
    {
        return $this->commentaires;
    }

    public function addCommentaire(Commentaire $commentaire): self
    {
        if (!$this->commentaires->contains($commentaire)) {
            $this->commentaires[] = $commentaire;
            $commentaire->setIdAnnonce($this);
        }

        return $this;
    }

    public function removeCommentaire(Commentaire $commentaire): self
    {
        if ($this->commentaires->contains($commentaire)) {
            $this->commentaires->removeElement($commentaire);
            // set the owning side to null (unless already changed)
            if ($commentaire->getIdAnnonce() === $this) {
                $commentaire->setIdAnnonce(null);
            }
        }

        return $this;
    }

    public function getIdUser(): ?User
    {
        return $this->id_user;
    }

    public function setIdUser(?User $id_user): self
    {
        $this->id_user = $id_user;

        return $this;
    }

    public function getIdPhoto(): ?Photo
    {
        return $this->id_photo;
    }

    public function setIdPhoto(?Photo $id_photo): self
    {
        $this->id_photo = $id_photo;

        return $this;
    }

    public function getIdCategorie(): ?Categorie
    {
        return $this->id_categorie;
    }

    public function setIdCategorie(?Categorie $id_categorie): self
    {
        $this->id_categorie = $id_categorie;

        return $this;
    }

    public function setElements(Form $annonceform)
    {
        $this->settitre($annonceform['titre']->getData());
        $this->setDescriptionCourte($annonceform['description_courte']->getData());
        $this->setDescriptionLongue($annonceform['description_longue']->getData());
        $this->setprix($annonceform['prix']->getData());
        $this->setphoto($annonceform['photo']->getData());
        $this->setpays($annonceform['pays']->getData());
        $this->setadresse($annonceform['adresse']->getData());
        $this->setcp($annonceform['cp']->getData());

    }


}
