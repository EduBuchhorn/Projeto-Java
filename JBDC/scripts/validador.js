/**
 *validar os campos obrigatórios
 */
function valida(){
    let matricula = frmCadastro.id.value;
    let nome = frmCadastro.nome.value;
    let email = frmCadastro.email.value;

    if(matricula === ""){
        alert('Preencha o campo Matricula!')
        frmCadastro.id.focus()
    }else if(nome === ""){
        alert('Preencha o campo Nome!')
        frmCadastro.nome.focus()
    }else if(email === ""){
        alert('Preencha o campo Email!')
        frmCadastro.email.focus()
        return false
    }else {
        document.forms["frmCadastro"].submit()
    }


}