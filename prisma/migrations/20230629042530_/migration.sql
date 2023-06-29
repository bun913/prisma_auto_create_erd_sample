/*
  Warnings:

  - You are about to drop the `DeletedUser` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `DeletedUser` DROP FOREIGN KEY `DeletedUser_userId_fkey`;

-- DropTable
DROP TABLE `DeletedUser`;

-- CreateTable
CREATE TABLE `UserDeleted` (
    `userId` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`userId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `UserDeleted` ADD CONSTRAINT `UserDeleted_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`userId`) ON DELETE RESTRICT ON UPDATE CASCADE;
