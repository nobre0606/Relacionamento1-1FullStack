-- CreateTable
CREATE TABLE "Pessoa" (
    "pessoaId" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "email" TEXT NOT NULL,

    CONSTRAINT "Pessoa_pkey" PRIMARY KEY ("pessoaId")
);

-- CreateTable
CREATE TABLE "Cpf" (
    "cpfId" SERIAL NOT NULL,
    "numeroCpf" TEXT NOT NULL,
    "pessoaId" INTEGER NOT NULL,

    CONSTRAINT "Cpf_pkey" PRIMARY KEY ("cpfId")
);

-- CreateIndex
CREATE UNIQUE INDEX "Pessoa_email_key" ON "Pessoa"("email");

-- CreateIndex
CREATE UNIQUE INDEX "Cpf_numeroCpf_key" ON "Cpf"("numeroCpf");

-- CreateIndex
CREATE UNIQUE INDEX "Cpf_pessoaId_key" ON "Cpf"("pessoaId");

-- AddForeignKey
ALTER TABLE "Cpf" ADD CONSTRAINT "Cpf_pessoaId_fkey" FOREIGN KEY ("pessoaId") REFERENCES "Pessoa"("pessoaId") ON DELETE CASCADE ON UPDATE CASCADE;
