//
// Created by harshvardhanchandirasekar on 8/1/20.
//

#ifndef CDTS_PLANET_CUH
#define CDTS_PLANET_CUH
#include<iostream>
#include<vector>


#define G 6.67e-11
class model
{
public:
    std::string name;
    float distance, velocity, starting_point, mass;
    model(std::string Name, float Distance, float Velocity, float Starting_point, float Mass) :
        name{ Name },
        distance{ Distance },
        velocity{ Velocity },
        starting_point{ Starting_point },
        mass{ Mass }
    {

    }

    void printName()
    {

    }
    float gravitational_force(model obj1)
    {
        float R = obj1.distance - distance;
        float M1 = obj1.mass;
        float M2 = mass;
        return (G * M1 * M2) / (R * R);
    }

};

class planet : public model {
public:
    float axis_angle;
    planet(std::string Name, float Distance, float Velocity, float Starting_point, float Mass, float Axis_angle) :
        model{ Name, Distance, Velocity, Starting_point, Mass },
        axis_angle{ Axis_angle }
    {
        std::cout << "model planet " << Name << " has been created." << std::endl;
    }

};

class comet : public model
{
public:
    comet(std::string Name, float Distance, float Velocity, float Starting_point, float Mass) : model{ Name, Distance, Velocity, Starting_point, Mass }
    {
        std::cout << "model comet " << Name << " has been created" << std::endl;
    }
    void temperature()
    {
    }
    void vapour_pressure()
    {
    }
};


//example code
/*
int main()
{
    planet Earth("Earth", 10.0, 11.1, 12.0, 13.0, 25.0);
    planet Venus("Venus", 20.0, 26, 31, 22, 67.0);
    float force = Earth.gravitational_force(Venus);
    std::cout << force << endl;
    comet Halley("Halley", 30, 32, 33, 34);
}
*/



#endif //CDTS_PLANET_CUH
