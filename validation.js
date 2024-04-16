const form=document.getElementById('form')
const patientname=document.getElementById('patientname')
const patientage=document.getElementById('patientage')
const Address=document.getElementById('Address')
const Email=document.getElementById('Email')
const gender=document.getElementById('gender')


form.addEventListener('submit', e =>{
    e.preventDefault();
    checkInput();

})

function checkInput(){
    const patientnamevalue=patientname.Value.trim();
    const patientagevalue=patientage.Value.trim();
    const Addressvalue=Address.Value.trim();
    const Emailvalue=Email.Value.trim();
    const gendervalue=gender.Value.trim();


    if(patientnamevalue===''){
        setError(patientname,'patientname is required')
        input-group .error='input-group .error';
        Small.innerText=massage;
    }
    else{
     setSuccess(patientname)
    }
    
    if(patientagevalue===''){
        setError(patientage,'patientage is required')
    }
    else{
            setSuccess(patientage)

        }
        if(Addressvalue===''){
            setError(Address,'Address is required')
        }
        else{
                setSuccess(Address)
    }

        if(Emailvalue===''){
            setError(Email,'Email is required')
        }
        else if(!isEmail(Email))
        {

        setError(Email,'please enter valid email')
    }
        else {
            setSuccess(Email)
        }

       function isEmail(Email){
        return /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(Email);

       }

}
const validationEmail=(Email)=>{
     return String(Email)
       .toLowerCase()
       .match( /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/);

       
}
function setError(element,message){
    const inputGroup=element.parentElement;
    const errorElement= inputGroup.querySelector('.error')

    errorElement.innerText='';
    inputGroup.classList.add('error')
    inputGroup.classList.remove('sucess')
    
}