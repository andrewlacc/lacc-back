class Computers extends React.Component {
    render() {
        return(
            <div className='pad'>
                <a className='btn btn-secondary' href="/adminarea">{ "<< Back" }</a>
                <h1>Edit Pre-Owned Input Tags</h1>
                <div className='row'>
                    <div className='col-2'>
                        <p>Implement Nav system</p>
                    </div>
                    <div className='col-10'>
                        <h2>Computer Type</h2>
                        <table className='table'>
                        </table>
                    </div>
                </div>
            </div>
        );
    }
}