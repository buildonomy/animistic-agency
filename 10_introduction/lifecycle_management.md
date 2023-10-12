# Lifecycle Management


- MIA framework
- syntactic vs contextual correctness
- Lifecycles
- PLM overview
- Adjacent Possible

- OODA Loop overview
- Inter and Intra OODA Loop
- Nested MIAs
- Corporations as a MIA
- Where do Persons fit into organizations?
- Where does automation fit into OODA loops?
- How does one account for relevance and evolution between each of these entities?


## What is a Digital Twin

The Digital Twin is proposed as the underlying premise behind [Product Lifecycle
Management](https://en.wikipedia.org/wiki/Digital_twin) software. This concept is rooted in three
separate entities that each represent 'product', the Prototype, the Instance, and the
Aggregate. From now on, I will refer to prototype as a product model, as model better encompasses
the scope of what the term has to lift. This delineation of product into Model, Instance, and
Aggregate (MIA) has only recently been named, but underpins most of the organizational structures
oriented towards product development.  Within an MIA framework, personnel are divided into
specialties responsible for modeling the product, producing or testing instances of the product, or
into collecting and disseminating data on the aggregate behavior of the product. All three
activities require different skills and resources but feed into one other. Typically engineers and
product managers control the product model, which they pass to the production and sales teams to
instantiate, and then a mixture of sales, IT, and engineering specialists aggregate information from
instances to feed back into the model-generating process. The concepts of model, instance, and
aggregate are discussed in more detail below.

[Model]: #model
[Models]: #model
[Model]{#model}

:   A model is a way that people can describe the object or function with one another at different
    scales of detail. When modeling an entity in general, and a product specifically, we are
    determining what it is, and why it exists. Secondarily we define how it behaves, and how it is
    constructed. Models _evolve_ as the essential characteristics of what they are modeling change
    as well as our understanding of the modeled entity changes. The model can change either because
    the object's internal qualities are improved, or because the niche the product exists in is
    either better understood or changes, which necessitates that the entity itself change its
    relationship with the environment, and therefore its functions.

    Models themselves are collections of sub-models and instances. For example, a Computer Aided
    Design (CAD) model of a widget is both modeled as an assembly of sub-components as well as
    modelled using a particular CAD data schema and particular instance of CAD software.

[Instance]: #instance
[Instances]: #instance
[Instance]{#instance}

:   Instances are material or functions that interact within the real world. Their essence may maps
    to one or many models, but consists of specific configurations, material and _context_ that
    exceeds what any model can capture in detail. Generally, instances are the elements of a Model
    Instance Aggregate production workflow that are bought by customers[^mia_capitalization].

    Each instance may link to many models, both because most models are defined as assemblies of
    sub-components as well as because the behavior of the instance is likely not completely
    described by any single model. For example, a cell phone may have a structural model, an energy
    model, a thermal model, or any other engineering specialty's model associated with it. Each
    engineering model may be connected to the other's, but isn't necessarily so.

    In addition, the cell phone's owner has a model of what their phone is and how it performs
    completely separate from the manufacturer's engineering model. The owner may add or customize
    the device in a manner that exceeds the expectations of the engineering models, making the
    fielded device's behavior only partially match what the engineers predicted.

    Finally, depending on the lifecycle of the instance, what models are appropriate descriptions of
    the cell phone's behavior changes. During assembly, the functional and mechanical
    characteristics of the instance are constantly changing. After the cell phone's owner drops it
    on a busy road, the only model that really fits the device is of a small, expensive brick.

[Aggregate]: #aggregate
[Aggregation]: #aggregate
[Aggregate]{#aggregate}

:   Once instances are released into their intended environment, they will generally behave with
    some degree of variation across their individual lifetimes as well as across the cohort of
    instances mapped to the same model. Any of these variations may exceed the design predictions
    integrated into the product model. Without a means to aggregate instance data, the product model
    cannot learn from its deployed environment in order to improve its fitness. By aggregating data
    and then interpreting that data with respect to the model, the model can adapt by integrating
    knowledge about its real-world usage.

    The mirror of this processes is how instances can sometimes dynamically synchronize with the
    evolution of their connected model(s). Software updates, and parts recalls are two examples of
    this type of aggregate dissemination in practice.

    As used here, aggregation refers to the ways in which information is transferred between
    instances and models. As such, aggregation is a general concept, not one-size fits all
    technique. For example, when a product instance is being built, quality control checks are
    especially important. **Quality control** is a type of model-to-instance connectivity that can
    simultaneously affect both the instance (by correcting the build) and the model (by correcting
    the design, material acquisition, or assembly processes). Different techniques for instance to
    model connectivity are necessary when the product is in the field. These might include device
    connectivity or customer surveys.


[^mia_capitalization]: Although instances are the entity type that is usually bought or sold, it
   isn't necessarily so. Modeling and Aggregation can generate returns as well. Examples of income
   from modeling includes consulting services or selling model documents such as blueprints, source
   code, and licensing patents. Income from aggregation services might include data analysis
   services or selling business to business products that connect preexisting products and
   infrastructure to communication networks and/or automatic aggregation services.


## Digital Threads

## Lifecycles

## Product Lifecycle Management

---



What this gets to is what OODA loop are you running? The models are a form of communication, don't
mistake them for the real thing. They are not a source of truth, they are a message that may be
stored _inside_ one or more sources of truth. If they are part of an entity, that message must be
bound and synchronized to all the parts it touches within the entity. If not, it must be treated as
a message that can be mutated or discarded for no reason.

The problem is, in order to evolve, in order to learn, models and configuration must change. As
such, there must be a release some where such that a source of truth becomes a simple message,
released to evolve within a new context.

digital twin is flawed when source of truth is not preserved. for the instance, the model is
context. If you have one PLM system managing the 'digital twins' for an entire product line of
instances, then you only have one instance---the PLM---it just has many disjointed sensor/effector
nodes. That is ok, but probably not what most consumers or businesses are looking for.

Model-space can change (software update). Signals can change (sensed environment), boundaries can
change (markov-blanket, sensors, actuators), milieu can change. The manner in which each of these
changes are communicated is universally idiosyncratic.

The systems engineering problem is not to 'mirror' all of this digitally, but to communicate changes
in adjacent possible in such a way that reality models support shared active inference.

- That means models stack on each other based on their types and dependencies.
- That means tracking configuration in the same language as modeling, just connecting them to
  different sources of truth.
- That means model changes can be pushed back to a community who all subscribes to the base 'idea'
  (repository) of the model.
- That means that the source of truth is always relative to the instance, but each instance has the
  capacity to precisely call on relations, communicate its truth, and bind it to them.
- That means that the boundary of each instance may not be prescribed by a contiguous physical
  boundary, but through calling and binding its truth, (elements of) the instance may touch multiple
  disjoint substrates.
- That means that an entity's lifecycle is best represented as the interplay between context and the
  adjacent possible, not as a state machine.

----

Electronic systems often need to incorporate many different types of structured data into a single
final system image. For the system to run, the system image must be _syntactically_
correct. Syntactic correctness depends on the initialization requirements of the programs that
define the system's functionality. In contrast, what is _contextually_ correct for any particular
system image is likely different than simple syntactic correctness. For example, when a system
contains calibrated hardware, the software requires an syntactically formatted calibration file in
order to run, but for the calibration file to be contextually correct, then the data within that
file must contain parameters specific to the installed hardware.

As a hardware example of syntactic vs contextual correctness, a shoe may be perfectly designed and
constructed, but if it doesn't fit a user's foot, the syntax of the shoe is irrelevant. It simply
doesn't matter how the upper is stitched together, or how the sole interacts with the ground, and so
on if the shoe doesn't fit. Or, as a more rocketry specific example it is irrelevant if your rocket
engine operates well if it doesn't create enough thrust or operate efficiently enough to lift your
rocket and its payload to the desired orbit.

Syntactic correctness enables a system to accommodate context, but contextual correctness is what
matters in the field. A product's fielded use may require only a subset of the systems
functionality, so a large proportion of the as-designed system may be irrelevant, syntactically
correct or not. Alternatively, the fielded product may have a context that exceeds the system's
functionality, such that even though the system is completely syntactically correct, it is
irrelevant for the desired use-case. In such cases it may be possible to custom tailor the base
system to fit the user's niche, but if so it is unlikely that such information will inform the
original system's model in any way.



Production lifecycle management tools must respond flexibly different needs for syntactic versus
contextual correctness. Comparing any particular system at a particular lifecycle state to any
other, there may be different requirements for syntactic verses contextual correctness. This is due
o many reasons such as: evolving architectures may introduce new syntax, different products may
share some but not all application-specific syntaxes, contextually correct files may only be
available at later stages of production or product lifecycles, among many other reasons. These
constraints may map to differing portions of the system's information footprint. For example, when
the system has a filesystem abstraction layer, this constraint may be true for full directories,
files, and/or specific values in specific files. In such cases, production lifecycle management
requires the filesystem reflect the syntactic and contextual requirements of the system's
product-version specific definition well as the lifecycle state of the particular instance of the
product. Similarly, the system may be represented within one or more enterprise databases, in which
case those databases must be similarly synchronized.

Each product has different syntactic and contextual requirements depending on its lifecycle. When a
product is being designed or is in initial assembly, the priority is to ensure the base
functionality of the system is correct. In such scenarios, system correctness likely means that
rudimentary system check outs can be performed consistently and generically. Once the base
capabilities of the system are checked out, then increasingly complex layers of "contextual
correctness" can be generated, loaded, and/or tested on the system.

When systems are upgraded or repaired, this creates another workflow constraint. Each update or
repair package can only be assumed to contain syntactically correct, not contextually correct
information. In such a case, contextually correct information may need to be extracted from the
system prior to the upgrade or repair. Contextual correctness can only be re-applied and verified
after the the upgrade or repair has been appropriately verified.

To resolve these constraints a workflow tool should allow developers to define and understand
_where_ syntactic and contextual constraints are generated, as well as layer what the package data
_should_ look like at different lifecycle states of the product. This involves defining syntax based
on a systems product-version specific requirements, and defining a system's context based on its
lifecycle state.

As syntax depends on product-version while context depends on the system's lifecycle state, if the
system is to evolve with respect to its lifecycle state, version, or hardware then syntactic and
contextual information must seamlessly map between one another.

