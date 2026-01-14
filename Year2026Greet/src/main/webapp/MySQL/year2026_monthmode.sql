-- I am using a database I already have on my MySQL instance --
-- so I use the "use" statement below to create my "monthmode" DB --
-- inside it. But everyone else should probably use first --
#CREATE DATABASE IF NOT EXISTS year2026;

use year2026;

create table monthmode (
id INT AUTO_INCREMENT PRIMARY KEY,
month VARCHAR(12),
vacation VARCHAR(255),
project VARCHAR(255),
homerepair VARCHAR(255)
);

insert into monthmode (month, vacation, project, homerepair)
values 
('January', 'Switzerland\'s Alps are a good choice. ', 
'January is observant - we should watch for any missing opportunity in our project.', 
'No one uses January for home repairs as there are so much other things to do '),
('February', 'French Alps are giving you a wink if you\'ve misse Swiss in January.', 
'February is frosty - we should look for crystallized new patterns.', 
'It is still cold for any home repairs.'),
('March', 'Forests are no longer unwelcoming in March, so we can go for a walk.',
 'March could be muddy - and we should identify our bogs.', 
 'It is even dangerous to clean windows in March as an icicle could fall on you.'),
('April', 'Gabrovo and the Festival of Humour would be a good start of the month  ', 
'April is a new beginning - also for our enthusiasm.', 
'Big Spring cleaning is more like for the previous month, so if you\'ve missed it, it is gone for good.'),
('May', 'That might be your last chance to have Greece without the crowd for the year if you\'re not already late', 
'May is cheerful - a lot of energy for our project', 
'In May most important is to catch sun rays, so what should we repair - stiff objects it our tender, exhaused skin? '),
('June', 'is time for Spain.', 
'June is detailed and we scrutinizing thoroughly.', 
'I am thinking about the next month when I am planning to have more time.'),
('July', 'Be a patriot - go to Sunny Beach', 
'July is playful and we experiment', 
'We would do the pending repairs at home but it is just not a month for repairs.'),
('August', 'If we\ve alreasy had a seeside stay for the year, we\'ll need a mountain now to rest fom the noise', 
'August is hot and so is our zeal.', 
'We can do home repairs in August but medical caution advised because of the heat'),
('September', 'Late see or early cultural destination as Paris?', 
'September is energetic and that is what we pour in our projects.', 
'The intensive Summer deserves a rest.'),
('October', 'Munich is the choise of the month, no question.',
'October is at times weary - but that is a food for our ideas.', 
'October is a good month for soul repair with cosy evenings and loungy days.'),
('November', 'Here is cold, but in Australia people are surfing', 
'November is cold - but analytical.', 
'The cold has started and it does not go well with home works.'),
('December', 'we can visit Wien and Christmas markets', 
'December is a planner - but we are doing that all the time', 
'We will plan that for the next year.')
;
