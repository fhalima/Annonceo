<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20191218134221 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE annonce (id INT AUTO_INCREMENT NOT NULL, commentaire_id INT DEFAULT NULL, id_user_id INT NOT NULL, id_photo_id INT DEFAULT NULL, id_categorie_id INT NOT NULL, titre VARCHAR(255) NOT NULL, description_courte VARCHAR(255) NOT NULL, description_longue LONGTEXT NOT NULL, prix DOUBLE PRECISION NOT NULL, photo VARCHAR(200) NOT NULL, pays VARCHAR(60) NOT NULL, ville VARCHAR(60) NOT NULL, adresse VARCHAR(200) NOT NULL, cp INT NOT NULL, date_enregistrement DATETIME NOT NULL, INDEX IDX_F65593E5BA9CD190 (commentaire_id), INDEX IDX_F65593E579F37AE5 (id_user_id), UNIQUE INDEX UNIQ_F65593E52E45A019 (id_photo_id), INDEX IDX_F65593E59F34925F (id_categorie_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE categorie (id INT AUTO_INCREMENT NOT NULL, titre VARCHAR(255) NOT NULL, motscles LONGTEXT NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE commentaire (id INT AUTO_INCREMENT NOT NULL, id_user_id INT NOT NULL, id_annonce_id INT NOT NULL, date_enregistrement DATETIME NOT NULL, INDEX IDX_67F068BC79F37AE5 (id_user_id), INDEX IDX_67F068BC2D8F2BF8 (id_annonce_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE note (id INT AUTO_INCREMENT NOT NULL, id_user1_id INT NOT NULL, id_user2_id INT NOT NULL, note INT NOT NULL, avis LONGTEXT NOT NULL, date_enregistrement DATETIME NOT NULL, INDEX IDX_CFBDFA14675C81E (id_user1_id), INDEX IDX_CFBDFA1414C067F0 (id_user2_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE photo (id INT AUTO_INCREMENT NOT NULL, photo_1 VARCHAR(255) DEFAULT NULL, photo_2 VARCHAR(255) DEFAULT NULL, photo_3 VARCHAR(255) DEFAULT NULL, photo_4 VARCHAR(255) DEFAULT NULL, photo_5 VARCHAR(255) DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE user (id INT AUTO_INCREMENT NOT NULL, pseudo VARCHAR(20) NOT NULL, password VARCHAR(255) NOT NULL, nom VARCHAR(20) NOT NULL, prenom VARCHAR(20) NOT NULL, telephone VARCHAR(20) DEFAULT NULL, email VARCHAR(50) NOT NULL, civilite VARCHAR(2) NOT NULL, roles JSON NOT NULL, date_enregistrement DATETIME NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE annonce ADD CONSTRAINT FK_F65593E5BA9CD190 FOREIGN KEY (commentaire_id) REFERENCES commentaire (id)');
        $this->addSql('ALTER TABLE annonce ADD CONSTRAINT FK_F65593E579F37AE5 FOREIGN KEY (id_user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE annonce ADD CONSTRAINT FK_F65593E52E45A019 FOREIGN KEY (id_photo_id) REFERENCES photo (id)');
        $this->addSql('ALTER TABLE annonce ADD CONSTRAINT FK_F65593E59F34925F FOREIGN KEY (id_categorie_id) REFERENCES categorie (id)');
        $this->addSql('ALTER TABLE commentaire ADD CONSTRAINT FK_67F068BC79F37AE5 FOREIGN KEY (id_user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE commentaire ADD CONSTRAINT FK_67F068BC2D8F2BF8 FOREIGN KEY (id_annonce_id) REFERENCES annonce (id)');
        $this->addSql('ALTER TABLE note ADD CONSTRAINT FK_CFBDFA14675C81E FOREIGN KEY (id_user1_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE note ADD CONSTRAINT FK_CFBDFA1414C067F0 FOREIGN KEY (id_user2_id) REFERENCES user (id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE commentaire DROP FOREIGN KEY FK_67F068BC2D8F2BF8');
        $this->addSql('ALTER TABLE annonce DROP FOREIGN KEY FK_F65593E59F34925F');
        $this->addSql('ALTER TABLE annonce DROP FOREIGN KEY FK_F65593E5BA9CD190');
        $this->addSql('ALTER TABLE annonce DROP FOREIGN KEY FK_F65593E52E45A019');
        $this->addSql('ALTER TABLE annonce DROP FOREIGN KEY FK_F65593E579F37AE5');
        $this->addSql('ALTER TABLE commentaire DROP FOREIGN KEY FK_67F068BC79F37AE5');
        $this->addSql('ALTER TABLE note DROP FOREIGN KEY FK_CFBDFA14675C81E');
        $this->addSql('ALTER TABLE note DROP FOREIGN KEY FK_CFBDFA1414C067F0');
        $this->addSql('DROP TABLE annonce');
        $this->addSql('DROP TABLE categorie');
        $this->addSql('DROP TABLE commentaire');
        $this->addSql('DROP TABLE note');
        $this->addSql('DROP TABLE photo');
        $this->addSql('DROP TABLE user');
    }
}
