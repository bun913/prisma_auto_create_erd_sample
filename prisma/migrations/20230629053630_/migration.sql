/*
  Warnings:

  - Added the required column `middleName` to the `UserProfile` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `UserProfile` ADD COLUMN `middleName` VARCHAR(191) NOT NULL;
