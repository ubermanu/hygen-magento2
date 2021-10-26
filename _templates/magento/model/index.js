// TODO: Ask for each fields

const fields = [];

module.exports = {
    prompt: ({ prompter, args }) => {
        // if (args.age > 18) {
        //     return Promise.resolve({ allow: true })
        // }

        // function ask

        // const askUntil = (prompt, condition) => {
        //     const ask = () => prompter.prompt(prompt).then(a => condition(a) || ask())
        //     return ask()
        // }

        return prompter.prompt({
            type: 'input',
            name: 'moduleName',
            message: 'What\'s your module name? (ex: Vendor_Package)'
        }).then(() => (
            prompter.prompt({
                type: 'input',
                name: 'className',
                message: 'Name of the class?',
            })
        ))

        // return askUntil(
        //     {
        //         type: 'input',
        //         name: 'age',
        //         message: 'whats your age?'
        //     },
        //     ({ age }) => age >= 18
        // )
    }
}
