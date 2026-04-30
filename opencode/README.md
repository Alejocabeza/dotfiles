# Sistema de Agentes OpenCode

> Flujo de desarrollo autónomo impulsado por IA con Spec-Driven Development

---

## Visión General

Este sistema es un **flujo de trabajo automatizado** que transforma una especificación del proyecto en código funcional, documentación y configuración de infraestructura.

```
[ESPECIFICACIÓN] → [PLAN] → [BUILD] → [QA] → [DEPLOY]
      ↑                                                 ↓
      └──────────────── [DOCS] ←───────────────────────┘
```

### Principios Fundamentales

| Principio | Descripción |
|-----------|-------------|
| **Spec como Fuente de Verdad** | Los agentes acceden a la skill `spec-driven-development` para conocer el contexto del proyecto |
| **Human-in-the-loop** | Tú defines la visión; los agentes ejecutan |
| **Branch-per-Change** | Nunca se opera en `main`; cada feature tiene su rama |
| **TDD Mandate** | Tests primero, luego código |
| **Quality Gate** | @QA valida todo antes de avanzar |

---

## Flujo de Trabajo (6 Fases)

```
┌──────────────────────────────────────────────────────────────────────────┐
│ PHASE 1: PLANNING                                                   │
│ @Plan coordina con @UX, @SEO y @Research                            │
│ Output: Plan técnico + UX Spec + Sprint Manifest                    │
└────────────────────────────────┬─────────────────────────────────────┘
                                 │
                                 ▼
┌──────────────────────────────────────────────────────────────────────────┐
│ PHASE 2: SPRINT DECOMPOSITION                                       │
│ @Agile descompone el plan en sprints ejecutables                    │
│ Output: Sprint Manifest con tareas atómicas                         │
└────────────────────────────────┬─────────────────────────────────────┘
                                 │
                                 ▼
┌──────────────────────────────────────────────────────────────────────────┐
│ PHASE 3: IMPLEMENTATION                                             │
│ @Build ejecuta sprints con enfoque TDD                               │
│ Output: Código + Tests + Design Tokens                                │
└────────────────────────────────┬─────────────────────────────────────┘
                                 │
                                 ▼
┌──────────────────────────────────────────────────────────────────────────┐
│ PHASE 4: QUALITY GATE                                                │
│ @QA audita funcionalidad, seguridad y fidelidad visual                │
│ Output: APPROVED o REJECTED                                           │
└────────────────────────────────┬─────────────────────────────────────┘
                                 │
                                 ▼
┌──────────────────────────────────────────────────────────────────────────┐
│ PHASE 5: CONTAINERIZATION                                           │
│ @Devops prepara Docker + CI/CD para build aprobado                    │
│ Output: Dockerfile + docker-compose + workflows                       │
└────────────────────────────────┬─────────────────────────────────────┘
                                 │
                                 ▼
┌──────────────────────────────────────────────────────────────────────────┐
│ PHASE 6: CONTEXT SYNC                                                │
│ @Docs actualiza AGENTS.md y genera PR body                            │
│ Output: Documentación actualizada + Pull Request                      │
└──────────────────────────────────────────────────────────────────────────┘
```

---

## Agentes del Sistema

### @Orch (Orchestrator)
**Rol:** Master PM - Controla el flujo completo

- Detecta el tipo de request y crea la rama correcta
- Orquesta la secuencia de agentes
- Reporta estado: `[STAGE: PHASE_NAME] [BRANCH: branch-name]`
- **Nunca opera en main**

```
Exit Signal: "PHASE_COMPLETE: [Phase_Number]"
```

---

### @Plan (Planner)
**Rol:** Principal Product Architect

- **Stack Discovery:** Audita el repo para detectar frameworks y dependencias
- **Architectural Routing:** Determina si necesita UI (invoca @UX) o es headless
- **Technical Intelligence:** Invoca @Research para APIs y best practices
- **TDD Strategy:** Define casos de prueba por fase

```
Subagents: @Research, @UX, @Agile
Exit Signal: "PLAN_ESTABLISHED: [Plan_Filename]"
```

---

### @UX (Designer)
**Rol:** Lead UI/UX Engineer + Stitch Design Expert

- **Stitch First:** Genera diseños visuales en Stitch antes del código
- **Design Tokens Export:** Extrae colores, spacing, border-radius como JSON
- **Component Mapping:** Identifica componentes existentes vs nuevos
- **SEO Input:** Recibe estructura semántica de @SEO como input (no validación)

```
Tools: stitch_list_projects, stitch_generate_screen_from_text, 
       stitch_create_design_system, stitch_apply_design_system
Subagents: @SEO
Exit Signal: "UX_SPEC_ESTABLISHED: [UX_Filename]"
```

---

### @SEO (Search Engine Optimization)
**Rol:** Senior SEO Strategist

- **Keyword Research:** Identifica términos clave para posicionamiento
- **Metadata Strategy:** Define títulos SEO, meta-descripciones, OpenGraph
- **Semantic Structure:** Provee estructura de tags (H1-H6, article, section, nav) como INPUT para @UX
- **Performance Audit:** Define límites de peso para imágenes y lazy loading

```
Exit Signal: "SEO_STRATEGY_READY: [Key focus areas]"
```

---

### @Agile (Sprint Manager)
**Rol:** Senior Agile Coach

- **Plan Decomposition:** Lee el plan maestro y lo divide en sprints
- **Atomic Tasks:** Cada tarea es lo suficientemente pequeña para completarse en un paso
- **Sprint Manifest:** Crea archivo en `.opencode/sprints/[Feature]_current_sprint.md`
- **Dependency Mapping:** Asegura bases antes de lógica compleja

```
Exit Signal: "SPRINT_READY: [Sprint_Filename]"
```

---

### @Build (Developer)
**Rol:** Senior Implementation Engineer

- **Pre-Flight Audit:** Compara tailwind.config.js con Design Tokens de @UX
- **Test-First (TDD):** Escribe tests antes de código
- **Implementation:** Código limpio siguiendo SOLID
- **No Arbitrary Values:** Prohibido usar clases Tailwind hardcodeadas

```
Tools: read_file, ls, write_file, edit_file, bash
Subagents: @Research
Exit Signal: "CONSTRUCTION_COMPLETED: Ready for QA review."
```

---

### @QA (Quality Assurance)
**Rol:** Senior QA & Security Engineer

- **Functional Validation:** 100% de éxito en tests
- **Visual Linting:** Verifica que no haya valores Tailwind fuera del Design System
- **Semantic Linting:** Valida estructura de tags contra estrategia SEO
- **Static Analysis:** Ejecuta tsc, linting, type checking
- **Security Audit:** Invoca @Security para vulnerabilidades

```
Tools: read_file, ls, bash, edit_file, write_file
Subagents: @Security, @Build
Exit Signal: "PHASE_APPROVED" o "PHASE_REJECTED: [Reason]"
```

---

### @Security (SecOps)
**Rol:** Senior Security Engineer

- **SAST:** Escanea OWASP Top 10 (Injection, XSS, Broken Auth)
- **Supply Chain Audit:** Ejecuta npm audit, pip-audit para CVEs
- **Secret Detection:** Busca API keys hardcodeadas (excluye *.test.* y .env.example)
- **Logic Audit:** Analiza autorización y exposición de datos

```
Exit Signal: "SECURITY_SCAN_COMPLETE: [PASS/FAIL] - [X] vulnerabilities found."
```

---

### @Devops (Infrastructure)
**Rol:** Lead DevOps & SRE Engineer

- **Environment Audit:** Lee package.json, planes para entender el stack
- **Containerization:** Escribe Dockerfile multi-stage y docker-compose
- **Pipeline Generation:** Crea workflows CI/CD en .github/workflows/
- **Deployment Scripts:** Genera scripts en .opencode/infra/

```
Exit Signal: "INFRA_READY: [Deployment Strategy Name]"
```

---

### @Research (Intelligence)
**Rol:** Senior Technical Researcher

- **Environment Fingerprinting:** Detecta versiones exactas en package.json, go.mod, etc.
- **Targeted Web Discovery:** Busca en documentación oficial (site:docs.stripe.com)
- **Verification:** Cruza datos encontrados con versión local detectada
- **NO FLUFF:** Salida estrictamente técnica

```
Tools: read_file, ls, google:search
Exit Signal: "RESEARCH_COMPLETE: [Summary of findings]"
```

---

### @Docs (Documentation)
**Rol:** Lead Technical Writer

- **AGENTS.md Maintenance:** Actualiza stack tecnológico tras cada build
- **Architecture Sync:** Documenta nuevos patrones en /docs/architecture
- **PR Generation:** Crea cuerpo del Pull Request

```
Exit Signal: "DOCS_UPDATED: [List of files]"
```

---

### @Ask (Advisor)
**Rol:** Principal Architectural Advisor

- **Consultivo puro:** Análisis sistémico y detección de anti-patrones
- **Guía estratégica:** Explica el "Por qué" antes del "Qué"
- **No ejecuta:** Guía al usuario hacia @Orch si necesita implementación

```
Exit Signal: "STRATEGY_ADVISED: [Resumen de la recomendación]"
```

---

## Integración con Spec-Driven Development

### Estructura Esperada por Proyecto

```
proyecto/
└── .agents/skills/spec-driven-development/
    └── SKILL.md  (especificación centralizada)
        ├── Visión del producto
        ├── Stack tecnológico
        ├── Módulos/Pantallas UI
        ├── Convenciones de código
        ├── Contratos de API
        └── Schema de base de datos
```

### Cómo Usan la Spec los Agentes

| Agente | Uso de Spec |
|--------|-------------|
| @Plan | Diseña considerando la visión del producto |
| @UX | Diseña UI según módulos y design tokens definidos |
| @Build | Implementa siguiendo convenciones del proyecto |
| @QA | Valida contra contratos y requisitos |
| @Devops | Containeriza según el stack detectado |

---

## Mejoras Recientes (v1.1)

| Fecha | Mejora |
|-------|--------|
| 2026-04-30 | Eliminadas referencias a modelos externos (Gemini/Claude) |
| 2026-04-30 | Corregida dependencia UX→SEO (SEO como input, no validación) |
| 2026-04-30 | Agregadas Phase 2 (Agile) y Phase 5 (Devops) completas |
| 2026-04-30 | QA ahora tiene write_file enabled |
| 2026-04-30 | Rol de @Ask clarificado como Principal Advisor |

---

## Estado de Transparencia

Cada agente reporta su estado en formato:

```
[STAGE: PHASE_NAME] [BRANCH: branch-name] [AGENT: current-agent]
```

---

## Ejemplo de Uso

### Feature Request
```
Usuario: "Quiero agregar autenticación social con Google"
```

### Flujo Ejecutado
```
1. Orch → Crea rama: feature/social-login
2. Plan → Lee spec, invoca UX (sí requiere UI)
3. UX → Genera diseño en Stitch + invoca SEO
4. SEO → Prove estructura semántica
5. Plan → Crea plan técnico + TDD strategy
6. Agile → Descompone en Sprint 1, 2, 3
7. Build → Ejecuta Sprint 1 (tests + código)
8. QA → Valida tests + seguridad + visuales
   ├─► APPROVED → Devops containeriza
   └─► REJECTED → Build arregla
9. Docs → Actualiza AGENTS.md + PR
```

---

## Licencia y Contribuciones

Este sistema es parte de la configuración personal de `@alejandrocabeza`. Para sugerencias o mejoras, abrir un issue en el repositorio correspondiente.

---

**Última actualización:** 2026-04-30
**Versión:** 1.1