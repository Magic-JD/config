# Joseph Daunt | Senior Java Developer

## About Me

I'm a results-driven **Senior Java Developer** with a strong background in
diagnosing and remediating complex technical challenges to significantly enhance
system efficiency and business operations. My expertise spans **Enterprise
Spring Boot**, modern **CI/CD methodologies**, and strategic **AI integration**,
consistently delivering robust and innovative software solutions. I'm passionate
about building high-performance systems and contributing to impactful projects.
Beyond coding, I enjoy engaging in communication and public engagement through
performing stand-up comedy and close-up magic, which has helped hone my public
speaking, improvisation, and interpersonal skills. I'm also active in rock
climbing (bouldering, lead, top rope) and scuba diving.

---

## Skills

- **Main Languages:** Java, Scala, Kotlin
- **Used Languages:** Python, JavaScript, Rust, Lua, Bash
- **Frameworks & Libraries:** Spring Boot, React, HTMX, Hibernate/JPA,
  Thymeleaf, RabbitMQ
- **Databases:** PostgreSQL, SQLite, SQL
- **Cloud & DevOps:** AWS, Docker, Kubernetes, CI/CD (Github CI, GitLab CI,
  Jenkins), Linux, SonarQube
- **Tools & Methodologies:** Git, RESTful APIs, Agile/Scrum, Clean Code, Design
  Patterns, Grafana, Redis

---

## My Projects

Here are some of my key personal projects that demonstrate my diverse technical
interests and capabilities:

### [Smart Jobs](https://github.com/Magic-JD/SmartJobs)

![smart jobs demo](demos/smartjobs.gif)

An **AI-powered web application** designed to revolutionize job search and
recruitment. It provides intelligent matching between candidates and roles,
performs detailed CV analysis to extract skills and qualifications, and offers
comprehensive career insights based on customizable criteria. The platform
includes a credit system for premium features and robust user management.
Architecturally, it's built with **Spring Boot 3.5.0** and leverages **Java 21
Virtual Threads** for high concurrency, following a **Hexagonal (Ports and
Adapters)** pattern for modularity. It uses **PostgreSQL** for persistence,
**Spring Security** for authentication, and **HTMX/Thymeleaf** for a dynamic UI,
all supported by a full **CI/CD pipeline** for deployment to **AWS**.

### [Pick and Mix](https://github.com/Magic-JD/PickAndMix)

![pick and mix demo](demos/wordplay.gif)

An engaging daily word transformation game developed using **React**. The
objective is to transform a starting word into a target word within five steps,
requiring anagrams and single-letter changes at each step. This project
showcases full-stack development capabilities with a strong emphasis on complex
algorithmic design and data pre-processing. The core innovation lies in its
intelligent word pair selection and pathfinding, pre-computed offline using
**Java** and **Python**. This involves efficient anagram and single-letter
change detection using binary encoding and Hamming distance, an optimized
pathfinding algorithm with iterative traversal and pruning, and difficulty
grouping based on the number of valid sequences. Additionally, **Python** with
**spaCy** and **GloVe word embeddings** is used for semantic similarity to
curate thematically linked word pairs. All pre-calculated data is integrated
statically into the **React** frontend for a lightweight and performant user
experience. The site supports English, Indonesian, and Ukrainian languages and
attracts around 120 unique visitors per month.

### [Is-fast: Terminal-Based Web Tool](https://github.com/Magic-JD/is-fast)

![is-fast demo](demos/is-fast.gif)

A cross-platform **TUI (Terminal User Interface)** tool built with **Rust**,
designed for quick and efficient internet searches directly from the terminal,
ideal for environments without browser access. `is-fast` allows users to search
the web, navigate results, and view content seamlessly, featuring customizable
**TOML-based configuration** for styling, content extraction via **CSS
selectors**, and syntax highlighting. It supports direct URL and local HTML file
viewing, enables outputting processed content to standard output for scripting,
and includes an optional local **SQLite** database for search history and a
configurable caching system for faster revisits. With support for
**DuckDuckGo**, **Google Custom Search**, and **Kagi**, it's distributed via
**Homebrew**, `curl`, and **Cargo**, maintaining continuous updates through a
**CI/CD pipeline**, and has garnered **136 stars on GitHub**, along with 6 forks
and 3 external pull requests.
