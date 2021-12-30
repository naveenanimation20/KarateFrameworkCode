function fn() { 
var env = karate.env; // get system property 'karate.env' karate.log('karate.env system property was:', env); 
if (!env) { 
env = 'dev'; 
} 

var config = { 
env: env, 
myVarName: 'hello karate', 
baseUrl: 'https://gorest.co.in',
tokenID: '007526d9efdbc07e084ff7a6d4cfcc90588fbe20641c00faebf45a7f3b2eaf33'
}

if (env == 'dev') { 
// customize 
// e.g. config.foo = 'bar'; 
} else if (env == 'e2e') { 
// customize 
} 
return config; 
}