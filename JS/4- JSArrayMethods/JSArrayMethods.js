const companies = [
    {name: "Company One", category: "Finance", start: 1981, end: 2003},
    {name: "Company Two", category: "Retail", start: 1992, end: 2008},
    {name: "Company Three", category: "Auto", start: 1990, end: 2007},
    {name: "Company Four", category: "Retail", start: 1989, end: 2010},
    {name: "Company Five", category: "Technology", start: 2009, end: 2014},
    {name: "Company Six", category: "Finance", start: 1987, end: 2010},
    {name: "Company Seven", category: "Auto", start: 1986, end: 1996},
    {name: "Company Eight", category: "Technology", start: 2011, end: 2056},
    {name: "Company Nine", category: "Retail", start: 1981, end: 1989},
];

const ages = [12, 13, 20, 14, 5, 34, 21, 44, 61, 11, 45, 28, 32]

//for(let i=0; i< companies.length; i++){
//    console.log(companies[i]);
//}

//forEach
//companies.forEach(function(Company){
 //   console.log(Company);
//})

//filter
/*let canDrink = [];
for(let i=0; i<ages.length; i++){
    if (ages[i] >= 21) {
        canDrink.push(ages[i]);
    }
} */

/*const canDrink = ages.filter(function(age){
    if(age >= 21){
        return true;
    }
})
console.log(canDrink)*/

//const canDrink = ages.filter(age => age >= 21);
//console.log(canDrink);

//filter retail category

/*const retailCompanies = companies.filter(function(company) {
    if(company.category === 'Retail') {
        return true;
    }
    
})*/
//const retailCompanies = companies.filter(company => company.category === 'Retail')
//console.log(retailCompanies);

//get 80's Companies
 /*const eightiesCompanies = companies.filter(company =>(company.start >= 1980 &&
    company.end <= 1990));
    console.log(eightiesCompanies);*/

//get companinies that lasted 10 atleast yrs 
//const lastedTenYears = companies.filter(company => (company.end - company.start > 10))
//console.log(lastedTenYears);

//map
//create array of company names
/*const companyNames = companies.map(function(company) {
    return company.name;
})
console.log(companyNames)*/

/*const testMap = companies.map(company => 
    `${company.name} [${company.start} - ${company.end}]`
)
console.log(testMap);*/
/*const ageMap = ages
    .map(age => Math.sqrt(age))
    .map(age => age * 2)
console.log(ageMap)*/

//sort companies by start year
//const sortedCompanies = companies.sort((c1, c2) => (c1.start > c2.start ? 1 : -1));
//console.log(sortedCompanies)

//sort ages
//const sortAges = ages.sort((a, b) => b-a)
//console.log(sortAges)


//reduce
/*let ageSum = 0;
for(let i=0; i< ages.length; i++){
    ageSum += ages[i];
}*/
//const ageSum = ages.reduce((total, age) => total + age, 0)
//console.log(ageSum)

//get total years for all companies
//const totalYears = companies.reduce((total, company) => total + (company.end - company.start),0)
//console.log(totalYears);

//combine methods
const combined = ages
.map(age => age * 2)
.filter(age => age >= 40)
//.sort((a, b) => a-b)
//.reduce((a,b) => a+b, 0)

console.log(combined)