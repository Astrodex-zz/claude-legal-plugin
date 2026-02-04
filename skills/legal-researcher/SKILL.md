---
name: legal-researcher
description: This skill should be used when the user asks to "verify legislation", "check case law", "find primary sources", "verify legal citation", "check if case is overruled", "research Australian law", "check AustLII", "check jade.io", "verify exact wording of statute", "check judicial consideration", "verify case currency", "check if legislation amended", or when drafting legal advice or documents that reference legislation or case law. CRITICAL - This skill MUST be invoked before providing any legal reference to ensure accuracy and currency.
version: 0.1.0
---

# Legal Researcher Skill

## Overview

This skill provides rigorous primary source verification for Australian legal work, minimizing hallucination risks through mandatory verification of all legal references against authoritative sources. The skill covers both Commonwealth and State/Territory law across case law and legislation.

**Core Principle**: NEVER cite legal authority from memory. ALWAYS verify against primary sources before providing any legal reference.

## When to Use This Skill

This skill **MUST** be invoked in the following situations:

- Before citing any legislation (Commonwealth or State/Territory)
- Before referencing any case law
- When drafting legal advice that includes legal authorities
- When reviewing documents containing legal citations
- When checking currency of legal authorities
- When verifying exact statutory wording
- When determining if a case has been overruled, distinguished, or questioned
- When researching Australian legal principles
- When the user explicitly requests verification of legal references

**Integration with Other Skills**: The legal-adviser and legal-reviewer skills automatically invoke this skill when legal references are encountered. This skill forms the verification foundation for all legal work.

## Primary Sources

### Commonwealth Law

**Legislation:**
- Federal Register of Legislation (legislation.gov.au) - Official Commonwealth legislation
- AustLII Commonwealth legislation databases (austlii.edu.au)

**Case Law:**
- High Court of Australia (hcourt.gov.au) - High Court judgments
- Federal Court of Australia (fedcourt.gov.au) - Federal Court judgments
- AustLII federal court databases (austlii.edu.au)
- Jade.io (jade.io) - Enhanced judicial consideration tools

### State and Territory Law

**State Legislation Databases:**
- **NSW**: legislation.nsw.gov.au
- **VIC**: legislation.vic.gov.au
- **QLD**: legislation.qld.gov.au
- **SA**: legislation.sa.gov.au
- **WA**: legislation.wa.gov.au
- **TAS**: legislation.tas.gov.au
- **NT**: legislation.nt.gov.au
- **ACT**: legislation.act.gov.au

**State Case Law:**
- AustLII state court databases (comprehensive coverage)
- State Supreme Court websites (by jurisdiction)
- Jade.io (where accessible)

## Verification Workflow for Case Law

### Step-by-Step Process

**1. Identify the Case Precisely**
- Full case name (all parties)
- Citation (preferably neutral citation)
- Court and jurisdiction
- Year of decision

**2. Determine Jurisdiction and Court Level**
- Commonwealth or State/Territory?
- Which court? (High Court, Federal Court, Supreme Court, etc.)
- What is the authoritative weight of this court?

**3. Access Primary Source via WebFetch**

**Primary Source (Required):**
- Access AustLII (www.austlii.edu.au)
- Navigate to appropriate database for jurisdiction
- Search by case name or citation
- Verify you have the correct case (check parties, date, court)

**Alternative Sources (Recommended for Cross-Verification):**
- Check jade.io for enhanced judicial consideration analysis (if accessible)
- Confirm via direct court website for very recent cases

**4. Read the Full Text Judgment**

**CRITICAL**: Do NOT rely solely on headnotes or case summaries.

- Read the complete judgment (or at minimum, introduction, relevant sections, and conclusion)
- Identify the **ratio decidendi** - the binding legal principle decided by the court
- Note any **obiter dicta** - non-binding comments or observations
- For multi-judge decisions, identify majority and any dissenting judgments
- Extract exact quotations with paragraph numbers for citations

**5. Verify the Specific Proposition**

- Confirm the case actually supports the legal proposition being cited
- Ensure you're not misrepresenting the court's reasoning
- Check the context - was this principle limited to specific circumstances?
- Identify any qualifications or exceptions noted by the court

**6. Check Judicial Consideration (MANDATORY)**

**On AustLII:**
- Use "Cases Citing This Case" feature
- Review how subsequent courts have treated this case
- Look for keywords: "applied", "distinguished", "not followed", "overruled", "questioned"

**On Jade.io (if accessible):**
- Use judicial consideration tools (often more comprehensive than AustLII)
- Review graphical representations of case treatment
- Check subsequent High Court treatment (highest authority)

**Key Questions:**
- Has this case been **applied** (followed by later courts)?
- Has this case been **distinguished** (different facts, not followed)?
- Has this case been **overruled** (explicitly rejected)?
- Has this case been **questioned** (doubts cast on reasoning)?
- Has a higher court addressed this principle?

**7. Determine Current Status**

Based on judicial consideration, assess:
- Is this case still good law?
- Has its scope been limited?
- What is its current authoritative weight?
- Are there any warnings or qualifications needed when citing it?

**8. Document Verification (Required Output)**

Provide:
- Full citation in AGLC format
- URLs to all primary sources checked (AustLII, jade.io, court website)
- Verification date
- Current status (e.g., "Verified current as of [date]", "Applied in [subsequent case]", "Distinguished in [later decision]")
- Any relevant judicial consideration notes

**9. If Unable to Verify**

If you cannot access the case or verify its current status:
- **Explicitly state**: "Unable to verify - manual legal research required"
- Do NOT cite the case
- Suggest alternative research approaches
- Explain what prevented verification (e.g., case too recent, database unavailable)

## Verification Workflow for Legislation

### Step-by-Step Process

**1. Identify the Exact Provision**
- Full title of the Act
- Section or subsection number
- Jurisdiction (Commonwealth or which State/Territory)

**2. Determine the Correct Source**

**For Commonwealth Legislation:**
- Primary: legislation.gov.au (Federal Register of Legislation)
- Alternative: AustLII Commonwealth legislation database

**For State/Territory Legislation:**
- Use the appropriate state database (see Primary Sources above)
- Alternative: AustLII state legislation databases

**3. Access Current Version via WebFetch**

- Navigate to the appropriate legislation database
- Search by Act title or citation
- **CRITICAL**: Ensure you're viewing the **current** or **in force** version
- Check the "as at" date or version information

**4. Verify Exact Wording**

- Locate the specific section or provision
- Read the provision in full context
- Extract exact quotation if needed
- Note any defined terms that affect interpretation
- Check for any subsections, paragraphs, or sub-paragraphs

**5. Check Commencement and Amendment History**

- When did this provision commence?
- Has it been amended since the original enactment?
- Are there any pending amendments not yet in force?
- Check the version history or compilation information

**6. Cross-Jurisdiction Considerations**

- Is there similar legislation in other jurisdictions?
- Are you certain this is the correct jurisdiction for the matter?
- Note any differences between Commonwealth and State laws on this topic

**7. Check for Repeals or Sunset Clauses**

- Is this provision still in force?
- Are there any sunset clauses or scheduled repeals?
- Has this Act been replaced by new legislation?

**8. Document Verification (Required Output)**

Provide:
- Full citation with section number
- Jurisdiction clearly stated
- "As at" date or version information
- URL to primary source
- Verification date
- Note any recent amendments or pending changes

**9. If Unable to Verify**

If you cannot verify the legislation:
- **Explicitly state**: "Unable to verify - manual legal research required"
- Do NOT cite the provision
- Explain what prevented verification
- Suggest checking the official database manually

## Anti-Hallucination Safeguards

### Mandatory Practices

1. **Never Cite from Memory**
   - Do not rely on training data for legal citations
   - Always use WebFetch to access primary sources
   - Verify every citation before inclusion

2. **Read Full Text, Not Summaries**
   - Always read the complete judgment for case law
   - Do not rely solely on headnotes or case summaries
   - Verify exact statutory wording for legislation

3. **Check Judicial Consideration for All Cases**
   - Never cite a case without checking if it's been overruled
   - Use both AustLII and jade.io where possible
   - Note any subsequent treatment by courts

4. **Verify Currency for All Legislation**
   - Always check the "as at" date
   - Review amendment history
   - Confirm provision is still in force

5. **Explicit Uncertainty Handling**
   - If verification fails, state clearly: "Unable to verify"
   - Never fabricate citations or legal principles
   - Better to admit uncertainty than provide incorrect information

6. **Multi-Source Cross-Verification**
   - Use multiple sources where possible (AustLII, jade.io, court websites)
   - Cross-check between databases
   - Note any discrepancies found

7. **Documentation of Verification**
   - Always include verification date in output
   - Provide URLs to all sources checked
   - Note current status for case law
   - Include version information for legislation

## Output Format

### For Case Law Verification

```
Case: [Full Case Name] [Citation]
Court: [Court Name and Jurisdiction]
URL: [AustLII URL], [jade.io URL if checked], [Court website URL if checked]
Verified: [Date]
Current Status: [e.g., "Verified current", "Applied in [Case]", "Distinguished in [Case]", "Overruled by [Case]"]

Key Principle: [Brief statement of ratio decidendi]

Quotation (if needed):
"[Exact quote with paragraph number]"

Judicial Consideration Notes:
- [List any significant subsequent treatment]
```

### For Legislation Verification

```
Legislation: [Full Act Title] [Jurisdiction]
Section: [Section number and subsection if applicable]
URL: [Primary source URL]
Version: As at [date] / [Compilation information]
Verified: [Date]
Status: [e.g., "Current", "Amended [date]", "Repealed [date]"]

Exact Wording:
"[Full text of provision]"

Amendment History:
- [Note any significant amendments if relevant]
```

### If Unable to Verify

```
Citation: [What was being verified]
Status: Unable to verify - manual legal research required
Reason: [Brief explanation of why verification failed]
Recommendation: [Suggest alternative research approach]
```

## Tools to Use

- **WebFetch**: Primary tool for accessing all legal databases and sources
- **Grep**: Search local documents for existing citations
- **Read**: Review local legal documents that may contain relevant references
- **Write**: Document verification results
- **Edit**: Update existing legal documents with verified citations

**Never use**: Bash echo, cat, or other command-line tools for legal research - these do not provide access to primary sources.

## Integration with Other Skills

**When invoked by legal-adviser skill:**
- Verify all citations before they are included in advice
- Provide formatted citations ready for insertion
- Include verification dates in footnotes

**When invoked by legal-reviewer skill:**
- Check all existing citations in documents under review
- Flag outdated or incorrect citations
- Verify currency of legal authorities
- Note what has changed for historical documents

**When invoked by citation-verifier agent:**
- Process multiple citations systematically
- Provide structured verification report
- Categorize verification status for each citation

## Common Pitfalls to Avoid

1. **Assuming a case says what you expect** - Always read it in full
2. **Citing from headnotes only** - Read the actual judicial reasoning
3. **Forgetting to check judicial consideration** - Cases can be overruled
4. **Using outdated legislation** - Always check current version
5. **Confusing similar case names** - Verify all details match
6. **Mixing up jurisdictions** - Confirm Commonwealth vs State clearly
7. **Relying on secondary sources** - Use primary sources only
8. **Skipping verification for "well-known" cases** - Verify everything
9. **Not noting limitations or qualifications** - Context matters
10. **Fabricating citations when uncertain** - State inability to verify instead

## Additional Resources

For detailed guidance on specific aspects of legal research:

- See `references/austlii-guide.md` for comprehensive AustLII navigation and search techniques
- See `references/jade-guide.md` for jade.io usage and judicial consideration tools
- See `references/court-websites-guide.md` for direct court website access
- See `references/case-law-analysis.md` for in-depth judicial consideration methodology
- See `references/legislation-verification.md` for detailed statutory verification protocols
- See `references/citation-formats.md` for AGLC (4th ed) citation standards

For practical examples:

- See `examples/case-verification-workflow.md` for complete case verification example
- See `examples/federal-legislation-example.md` for Commonwealth legislation verification
- See `examples/state-legislation-example.md` for State legislation verification
- See `examples/judicial-consideration-example.md` for checking case treatment

## Important Disclaimers

- This skill assists with legal research but does not replace professional legal judgment
- Verification of primary sources is not a substitute for comprehensive legal analysis
- This skill does not constitute legal advice
- Users remain responsible for the accuracy and appropriateness of their legal work
- Some sources (particularly jade.io) may require subscriptions for full access
- Very recent cases or legislation may not yet be available in online databases
- When in doubt, seek professional legal research assistance

---

**Remember**: The fundamental principle of this skill is accuracy through verification. Speed is secondary to correctness. It is always better to state "Unable to verify - manual research required" than to cite unverified legal authority.
