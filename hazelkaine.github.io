<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Chi's Resume</title>
  <style>
    /* Global styles */
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #ffffff; /* Black background */
      color: #fff; /* White text color */
    }

    /* Resume container */
    #resume {
      max-width: 800px;
      margin: 40px auto;
      background-color: #eee0ba; /* Cream background */
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
      color: #000; /* Black text color */
    }

    /* Section styles */
    #resume > div {
      margin-bottom: 30px;
    }

    #resume h2 {
      margin-top: 0;
      color: #333;
    }

    #resume ul {
      list-style-type: none;
      padding: 0;
    }

    #resume li {
      margin-bottom: 10px;
    }

    /* Personal info */
    #personal-info p {
      margin: 5px 0;
    }

    /* Education and Work Experience */
    #education li,
    #work-experience li {
      border-left: 4px solid #333;
      padding-left: 10px;
    }
  </style>
</head>
<body>
  <div id="resume">
    <div id="personal-info"></div>
    <div id="education"></div>
    <div id="work-experience"></div>
    <div id="skills"></div>
    <!-- Add other resume sections -->
  </div>

  <script>
    const resumeData = {
      personalInfo: {
        name: 'Chi Tan',
        email: 'Cnyktan@gmail.com',
        phone: '916-250-2912',
        // Add other personal information
      },
      workExperience: [
        {
          company: 'REACT SOLUTIONS',
          title: 'Research Developer',
          startDate: '2022-01-01',
          endDate: 'Current',
          responsibilities: [
            'Primary responsiblity is to disign, modle, analyze security risks, and data managment.',
            'Incorporate mesasurable life cylce analytics including data loss prevention strategies.',
            'Contribute to implement findings on high value solutions and implment strategic planning proposals.',
            'Model designs in different inequitable markets and condition risk managment on projects.',
            // Add more responsibilities
          ],
        },
        // Add more work experience entries
        {
          company: 'South Shore',
          title: 'Technical Researcher',
          startDate: '2019-06-01',
          endDate: '2022-12-31',
          responsibilities: [
            'Researched and reviewed over sities of watersheds and area of concers (AOCs) within local regions.',
            'Prepared at risk reports, delineations, inspections on variable AOC and watershed that are at risk.',
            'Contributed to research entries assisted in statistical modeling of collected data in all asset classes.',
            'Complied and analyzed client execution informaiton and reporting using statistical modeling.'
            // Add more responsibilities
          ],
        },
        // Add more work experience entries
        {
          company: 'Global Institue and Strategy(GIS)',
          title: 'Sustainabilty Researcher',
          startDate: '2017-08-01',
          endDate: '2019-06-01',
          responsibilities: [
            'Assised in providing statistical analysis and reporting on small and urban planning models.',
            'Researched and collected data on hundreds of problematic cases and compiled data on local regions.',
            'Delivered deliverables to administrators on consumer feedback and input growth of sustinable projects.',
            'Contributed to ongoing reserach on dynamics of equitable infrastructure and feasabilty studies.',
            // Add more responsibilities
          ],
        },
        // Add more work experience entries
        {
          company: 'Better Strategic Strategy (BSS)',
          title: 'Research Developer',
          startDate: '2015-06-01',
          endDate: '2017-08-01',
          responsibilities: [
            'Analyzed hundreds on external case studies on strategic and infastrucue planning projects',
            'Performed and developed quantitative models for various market risks on macro scale.',
            'Tested strategies that included low to high level risk and projected outcomes for case reports.',
            'Contributed to weekly deliverables and coordinated with partners and planners for imporved data.',
            // Add more responsibilities
          ],
        },
            
        // Add more work experience entries
      ],
      education: [
        {
          institution: 'Cleveland State University',
          degree: 'Masters of Science in Environmental Science',
            graduationYear: ".",
          // Add other education details
        },
        // Add more education entries
      ],
      skills: [
        'JavaScript',
        'React.js',
        'Node.js',
        'HTML5',
        'CSS3',
        // Add more skills
      ],
      // Add other sections as needed
    };

    function renderPersonalInfo() {
      const personalInfoElement = document.getElementById('personal-info');
      personalInfoElement.innerHTML = `
        <h2>${resumeData.personalInfo.name}</h2>
        <p>Email: ${resumeData.personalInfo.email}</p>
        <p>Phone: ${resumeData.personalInfo.phone}</p>
        <!-- Add other personal info elements -->
      `;
    }

    function renderWorkExperience() {
      const workExperienceElement = document.getElementById('work-experience');
      const workExperienceList = resumeData.workExperience.map(job => `
        <li>
          <h3>${job.company}</h3>
          <h4>${job.title}</h4>
          <p>${job.startDate} - ${job.endDate}</p>
          <ul>
            ${job.responsibilities.map(responsibility => `<li>${responsibility}</li>`).join('')}
          </ul>
        </li>
      `).join('');
      workExperienceElement.innerHTML = `<ul>${workExperienceList}</ul>`;

    }
    function renderEducation() {
      const educationElement = document.getElementById('education');
      const educationList = resumeData.education.map(edu => `
        <li>
          <h3>${edu.degree}</h3>
          <p>${edu.institution}, ${edu.graduationYear}</p>
          <!-- Add other education details -->
        </li>
      `).join('');
      educationElement.innerHTML = `<ul>${educationList}</ul>`;
    }
    function renderSkills() {
      const skillsElement = document.getElementById('skills');
      const skillsList = resumeData.skills.map(skill => `<li>${skill}</li>`).join('');
      skillsElement.innerHTML = `<ul>${skillsList}</ul>`;
    }
    
    window.onload = function() {
      renderPersonalInfo();
      renderWorkExperience();
      renderEducation();
      // Call other rendering functions
    };
  </script>
</body>
</html>
