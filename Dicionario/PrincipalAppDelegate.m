//
//  PrincipalAppDelegate.m
//  Dicionario
//
//  Created by Rafael Brigagão Paulino on 22/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import "PrincipalAppDelegate.h"

@implementation PrincipalAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    //nao podemos guardar tipo primitivos no dicionario
    //para guardar numeros criamos nsnumber
    NSNumber *idade = [NSNumber numberWithInt:20];
    NSNumber *altura = [NSNumber numberWithFloat:1.90];
    
    //temos o NSDictionary que e estatico
    //NSMutableDictionay, dinamico, que permite alteracoes posteriores ao alloc/init
    NSDictionary *pessoa = [[NSDictionary alloc] initWithObjectsAndKeys:@"Eduardo",@"nome",idade,@"idade", altura, @"altura", nil];
    
    NSLog(@"Dicionario criado = %@", pessoa.description);
    
    //consultar um bojeto associado a uma chave?
    NSString *nomeConsultado = [pessoa objectForKey:@"nome"];
    NSLog(@"Nome consultado: %@", nomeConsultado);
    
    
    //criando um dicionario vazio  para ser manipulado nas proximas linhas
    NSMutableDictionary *aluno = [[NSMutableDictionary alloc] init];
    
    //inserir novos objetos no dicionario?
    [aluno setObject:@"Gustavo" forKey:@"aluno"];
    [aluno setObject:idade forKey:@"idade"];
    [aluno setObject:altura forKey:@"altura"];
    
    NSLog(@"Dicionario aluno (mutable)= %@", aluno.description);
    
    //alterar um objeto associado a uma chave?
    //fazemos um setObject:ForKey: utilizando a mesma chave. O objeto ira se sobrepor
    [aluno setObject:@"Rafael" forKey:@"aluno"];
    
    NSLog(@"Dicionario aluno (mutable) = %@", aluno.description);
    
    //como remover um objeto de um dicionario?
    [aluno removeObjectForKey:@"altura"];
    
    NSLog(@"Dicionario aluno (mutable) = %@", aluno.description);
    
    
    //guardando dicionarios dentro um array
    NSMutableArray *listaAlunos = [[NSMutableArray alloc] init];
    
    NSMutableDictionary *aluno1 = [[NSMutableDictionary alloc] init];
    
    [aluno1 setObject:@"Viviane" forKey:@"nomeAluno"];
    [aluno1 setObject:[NSNumber numberWithInt:20] forKey:@"idadeAluno"];
    
    //adicionado o dicionario criado no array
    [listaAlunos addObject:aluno1];
    
    NSMutableDictionary *aluno2 = [[NSMutableDictionary alloc] init];
    
    [aluno2 setObject:@"Rafael" forKey:@"nomeAluno"];
    [aluno2 setObject:[NSNumber numberWithInt:21] forKey:@"idadeAluno"];
    
    //adicionado o dicionario criado no array
    [listaAlunos addObject:aluno2];
    
    NSMutableDictionary *aluno3 = [[NSMutableDictionary alloc] init];
    
    [aluno3 setObject:@"Gustavo" forKey:@"nomeAluno"];
    [aluno3 setObject:[NSNumber numberWithInt:22] forKey:@"idadeAluno"];
    
    //adicionado o dicionario criado no array
    [listaAlunos addObject:aluno3];
    
    NSLog(@"Lista de alunos: %@", listaAlunos.description);
    
    //consultar um valor dentro do dicionario e array
    //recuperando a referencia ao dicionario na posicao 0
    NSDictionary *alunoConsultado = [listaAlunos objectAtIndex:0];
    
    //recuperando uma referencia ao objeto para a chave nomeAluno
    NSString *nomeAlunoConsultado = [alunoConsultado objectForKey:@"nomeAluno"];
    

    NSLog(@"Aluno consultado: %@", nomeAlunoConsultado);
    
    //TODOS OS NOMES DOS ALUNOs
    for (int i = 0; i < listaAlunos.count; i++)
    {
        NSString *nomeAluno = [[listaAlunos objectAtIndex:i] objectForKey:@"nomeAluno"];
        NSLog(@"%@", nomeAluno);
    }

    

    
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
