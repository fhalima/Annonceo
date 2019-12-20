<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\NoteRepository")
 */
class Note
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="integer")
     */
    private $note;

    /**
     * @ORM\Column(type="text")
     */
    private $avis;

    /**
     * @ORM\Column(type="datetime")
     */
    private $date_enregistrement;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\User", mappedBy="note_user1")
     */
    private $annonce_user1;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\User", mappedBy="id_user2")
     */
    private $note_user2;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\User", inversedBy="notes")
     * @ORM\JoinColumn(nullable=false)
     */
    private $id_user1;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\User", inversedBy="notes")
     * @ORM\JoinColumn(nullable=false)
     */
    private $id_user2;

    public function __construct()
    {
        $this->annonce_user1 = new ArrayCollection();
        $this->note_user2 = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNote(): ?int
    {
        return $this->note;
    }

    public function setNote(int $note): self
    {
        $this->note = $note;

        return $this;
    }

    public function getAvis(): ?string
    {
        return $this->avis;
    }

    public function setAvis(string $avis): self
    {
        $this->avis = $avis;

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
     * @return Collection|User[]
     */
    public function getAnnonceUser1(): Collection
    {
        return $this->annonce_user1;
    }

    public function addAnnonceUser1(User $annonce_User1): self
    {
        if (!$this->annonce_user1->contains($annonce_User1)) {
            $this->annonce_user1[] = $annonce_User1;
            $annonce_User1->setannonceeUser1($this);
        }

        return $this;
    }

    public function removeAnnonceUser1(User $annonce_User1): self
    {
        if ($this->annonce_user1->contains($annonce_User1)) {
            $this->annonce_user1->removeElement($annonce_User1);
            // set the owning side to null (unless already changed)
            if ($annonce_User1->getAnnonceUser1() === $this) {
                $annonce_User1->setAnnonceUser1(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection|User[]
     */
    public function getNoteUser2(): Collection
    {
        return $this->note_user2;
    }

    public function addNoteUser2(User $noteUser2): self
    {
        if (!$this->note_user2->contains($noteUser2)) {
            $this->note_user2[] = $noteUser2;
            $noteUser2->setNoteUser2($this);
        }

        return $this;
    }

    public function removeNoteUser2(User $NoteUser2): self
    {
        if ($this->note_user2->contains($NoteUser2)) {
            $this->note_user2->removeElement($NoteUser2);
            // set the owning side to null (unless already changed)
            if ($NoteUser2->getNoteUser2() === $this) {
                $NoteUser2->setNoteUser2(null);
            }
        }

        return $this;
    }

    public function getIdUser1(): ?User
    {
        return $this->id_user1;
    }

    public function setIdUser1(?User $id_user1): self
    {
        $this->id_user1 = $id_user1;

        return $this;
    }

    public function getIdUser2(): ?User
    {
        return $this->id_user2;
    }

    public function setIdUser2(?User $id_user2): self
    {
        $this->id_user2 = $id_user2;

        return $this;
    }
}
