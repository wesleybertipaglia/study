import React from 'react';
import './index.css'
import ReceipeTitle from './RecipeTitle';

function App() {
    return (
        <section>
            <div className="sect-content">
                <div className="header">
                    <span className="logo"></span>
                    <h1>Recipe Manager</h1>
                </div>
                <div className="receipies">
                    <ReceipeTitle title="First receipe" receipe="
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                        Imperdiet massa tincidunt nunc pulvinar sapien et ligula. 
                        Id venenatis a condimentum vitae sapien pellentesque habitant morbi. 
                        Gravida in fermentum et sollicitudin ac orci. Eget nullam non nisi est. 
                        In tellus integer feugiat scelerisque varius morbi. 
                        Sodales ut etiam sit amet nisl purus in mollis. 
                        Fringilla est ullamcorper eget nulla facilisi. Sit amet nisl suscipit adipiscing. 
                        Arcu dictum varius duis at. Tempus iaculis urna id volutpat lacus laoreet non curabitur.
                    "/>
                    <ReceipeTitle title="Second receipe" receipe="
                        Duis at consectetur lorem donec. Scelerisque eu ultrices vitae auctor eu. 
                        Sit amet consectetur adipiscing elit pellentesque habitant morbi. 
                        Velit egestas dui id ornare arcu. Ullamcorper morbi tincidunt ornare massa eget egestas. 
                        Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. 
                        Amet consectetur adipiscing elit pellentesque habitant morbi. Mi eget mauris pharetra et ultrices neque. 
                        Viverra justo nec ultrices dui sapien eget mi. Consequat id porta nibh venenatis cras sed felis. 
                        Id diam maecenas ultricies mi eget mauris pharetra et ultrices. Tellus mauris a diam maecenas sed enim. 
                        Eu non diam phasellus vestibulum lorem sed risus. Pulvinar neque laoreet suspendisse interdum consectetur libero id faucibus. 
                        Mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lorem ipsum dolor sit amet consectetur.
                    "/>
                    <ReceipeTitle title="Another receipe..." receipe="
                    Turpis massa sed elementum tempus egestas sed sed risus pretium. 
                    Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet risus. 
                    Urna duis convallis convallis tellus. Euismod lacinia at quis risus. 
                    Adipiscing bibendum est ultricies integer. Aliquam purus sit amet luctus venenatis lectus magna fringilla urna. 
                    Sed blandit libero volutpat sed cras ornare. Ac placerat vestibulum lectus mauris ultrices eros in cursus. 
                    Adipiscing enim eu turpis egestas pretium. Magna eget est lorem ipsum dolor sit amet consectetur adipiscing.
                    Ut consequat semper viverra nam libero justo laoreet sit. Tristique senectus et netus et malesuada fames ac. 
                    Tincidunt ornare massa eget egestas purus viverra. Turpis massa sed elementum tempus egestas. 
                    Sit amet nisl suscipit adipiscing bibendum est. Adipiscing tristique risus nec feugiat in fermentum. 
                    Molestie at elementum eu facilisis sed odio morbi quis commodo. Purus in mollis nunc sed. 
                    Lacus vel facilisis volutpat est velit egestas dui id ornare.
                "/>
                </div>
            </div>
        </section>
    )
}

export default App;