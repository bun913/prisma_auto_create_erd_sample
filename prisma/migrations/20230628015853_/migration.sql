/*
  Warnings:

  - Added the required column `firstName` to the `UserProfile` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `UserProfile` ADD COLUMN `firstName` VARCHAR(191) NOT NULL;
