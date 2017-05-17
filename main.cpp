#include <cstdlib>
#include <ctime>
#include <algorithm>
#include <iostream>
#include <cfloat>

#define PI 3.1415926
#define tauxSansRisque 0.05
#define Dividende 0.03
#define volatilite 0.3
#define T 1
#define N 10000
#define PrixExercice 100
#define PrixInitiale 100

using namespace std;

double randomUniform();

double randomGauss();

double lastEvolutionOptionEuropeenne();

double evolutionOptionAsiatique();

double calculPrixOptionAsiatique(double strike, int nbIteration);

double calculePrixOptionEuropeenne(double strike, int nbIteration);

int main() {
    srand (time(NULL));
    for (int i = 0; i <10 ; ++i) {
//        double c = calculPrixOptionAsiatique(PrixExercice, 100);
        double c = calculePrixOptionEuropeenne(PrixExercice, 1000);
        cout << "final prix option is: "<< c << "\n";
    }
    return 0;
}

double randomUniform() {
    return ((double)rand() / (double)RAND_MAX);
}

double randomGauss() {
    return sqrt(-2 * log(randomUniform())) * cos(2 * PI*randomUniform());
//        Z1 = sqrt(-2 * log(UniformeValue1))*sin(2 * PI*UniformeValue2);
}

double lastEvolutionOptionEuropeenne() {
    double v = (tauxSansRisque - Dividende - (volatilite*volatilite / 2));
    double prixInitiale = PrixInitiale;
    double X = log(prixInitiale);
    double deltaT = (double) T / N;


    do {
        X = log(prixInitiale);
        for (int i = 0; i < N; i++) {
            X = X + v*deltaT + sqrt(deltaT)*volatilite*randomGauss();
            if ((X >= DBL_MAX || X <= -DBL_MAX) || X!=X) break;
        }

    } while ((X >= DBL_MAX || X <= -DBL_MAX) || X!=X);

    return X;
}

double evolutionOptionAsiatique() {
    double v = (tauxSansRisque - Dividende - (volatilite*volatilite / 2));
    double prixInitiale = PrixInitiale;
    double X = log(prixInitiale);
    double deltaT = (double) T / N;
    vector<double> chemin;


    do {
        chemin.clear();
        X = log(prixInitiale);
        for (int i = 0; i < N; i++) {
            X = X + v*deltaT + sqrt(deltaT)*volatilite*randomGauss();
            chemin.push_back(X);
            if ((X >= DBL_MAX || X <= -DBL_MAX) || X!=X) break;
        }

    } while ((X >= DBL_MAX || X <= -DBL_MAX) || X!=X);

    double resultat = 0;
    for (unsigned int i = 0; i < chemin.size(); ++i) {
        resultat += chemin.at(i);
    }
    return resultat/chemin.size();
}

double calculPrixOptionAsiatique(double strike, int nbIteration) {
    double gain = 0;
    vector<double> vectorProcess;
    double lastValues = 0;

    for (int j = 1; j < nbIteration; j++) {
        lastValues = lastEvolutionOptionEuropeenne();
//        cout << "x is: " << lastValues << "\n";
        strike = exp(lastValues);
//        cout << "s is: " << strike << "\n";
        gain = max(strike - PrixExercice,0.0);
//        cout << "gain is: "<< gain << "\n";
        vectorProcess.push_back(gain);
//        cout << "prix option is: " << result << "\n";
//        cout<<"-------------------------------------"<<endl;
    }
    double resultat = 0;
    for (unsigned int i = 0; i < vectorProcess.size(); ++i) {
        resultat += vectorProcess.at(i);
    }
    return exp(-tauxSansRisque*T)*(resultat/vectorProcess.size());
}

double calculePrixOptionEuropeenne(double strike, int nbIteration) {
    double gain = 0;
    vector<double> vectorProcess;
    double lastValues = 0;

    for (int j = 1; j < nbIteration; j++) {
        lastValues = lastEvolutionOptionEuropeenne();
//        cout << "x is: " << lastValues << "\n";
        strike = exp(lastValues);
//        cout << "s is: " << strike << "\n";
        gain = max(strike - PrixExercice,0.0);
//        cout << "gain is: "<< gain << "\n";
        vectorProcess.push_back(gain);
//        cout << "prix option is: " << result << "\n";
//        cout<<"-------------------------------------"<<endl;
    }
    double resultat = 0;
    for (unsigned int i = 0; i < vectorProcess.size(); ++i) {
        resultat += vectorProcess.at(i);
    }
    return exp(-tauxSansRisque*T)*(resultat/vectorProcess.size());
}
