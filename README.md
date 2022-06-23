# Pewlett-Hackard-Analysis
SQL Postgres pgAdmin


## Overview 

To identify key elements of the “silver tsunami”, the potential number of retiring employees per title and department as well as identify employees who are eligible to participate in a mentorship program.

## Results

- The amount of retiring employees in question:

  ![Screen Shot 2022-06-22 at 10 55 35 PM](https://user-images.githubusercontent.com/100239100/175197317-7bd98527-823a-4099-b95f-b8cc32c94e11.png)

- The first group of individuals in the "unique titles" table provides a larger pool, which includes a four year window of employees birthed between 1952-1955.  We've filtered so that we're certain they all are currently employeed as well as their most recent position with PH.

    ![Screen Shot 2022-06-22 at 10 39 14 PM](https://user-images.githubusercontent.com/100239100/175195442-bef0222c-9683-4197-a110-7ee5eadad9ff.png)


- From the analysis we now know the impact each department will experience, due to the “silver tsunami” wave of retirees. 

   ![Screen Shot 2022-06-22 at 10 36 07 PM](https://user-images.githubusercontent.com/100239100/175195043-a4ff9587-4d18-4ed5-a2d9-8704af55c123.png)
 

- The second collective, the "mentorship eligibilty" table, will consist of individuals who will be offered an opportunity, a first of its kind; to step into a different role, which is a part-time position and to solely train others to be their successors.

    ![Screen Shot 2022-06-22 at 10 48 58 PM](https://user-images.githubusercontent.com/100239100/175196518-79ab55fa-84c2-4c1a-86d4-29fd1c180635.png)

## Summary 

There will be roughly 72K+ roles that will need to be filled at PH.  "Mentorship Eligibility" pool that was requested, of just those born in 1965, is just 1549; this is more than likely not enough or an a tall ask of this group of PH employees who may or may not accept the offer.  If we expand the age window to one similar to the one of the “silver tsunami”, which is four years, to five years (as shown in the image below), PH can more than accomodate the task of having enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees.

![Screen Shot 2022-06-22 at 10 21 01 PM](https://user-images.githubusercontent.com/100239100/175193351-35398fb7-6ff3-4d63-8660-eeb9c3377408.png)

- ReFactor the code below annually or an arbitrary interval, so PH is abreast of their potential mentors per dept., until the “silver tsunami” is over.

    ![Screen Shot 2022-06-22 at 9 22 27 PM](https://user-images.githubusercontent.com/100239100/175187327-211ea3d0-5fcb-43bd-a613-58fbbb8f3126.png)
    
    ![Screen Shot 2022-06-22 at 9 45 33 PM](https://user-images.githubusercontent.com/100239100/175189575-0075b42c-1c28-4bbe-89a3-966dae77f4fd.png)


- Utilize this code to better prepare for the tail-end of the “silver tsunami”; there's only a minor adjustment to the birthdate, roughly a 5 year extension.  Depending on the success of the pilot program this could be very affective.

    ![Screen Shot 2022-06-22 at 9 33 33 PM](https://user-images.githubusercontent.com/100239100/175188393-dcd5c414-28f5-40c6-8bf3-4452e44168df.png)
